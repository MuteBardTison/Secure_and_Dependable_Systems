/*
 * check-rpn.c --
 */

#include <stdlib.h>
#include <check.h>

#include "../src/stack.h"
#include "../src/rpn.h"

const int kNumbers_of_element = 100;

START_TEST(test_stack)
{
    Stack * s;
    s = stack_new();
    ck_assert_msg(stack_peek(s) == NULL, NULL);
    ck_assert_msg(stack_pop(s) == NULL, NULL);
    for(int i = 0; i < kNumbers_of_element; i++) {
        int * itr = (int* )malloc(sizeof(int));
        itr = &i;
        stack_push(s, itr);
    }
    while(!stack_empty(s)) {
        int* peek = (int*)malloc(sizeof(int));
		peek = stack_peek(s);
        ck_assert_int_eq(*peek, s->top);
        int* pop = (int*)malloc(sizeof(int));
		pop = stack_pop(s);
        ck_assert_int_eq(*pop, s->top + 1);
        free(peek);
        free(pop);
    }
    stack_del(s);
}
END_TEST

START_TEST(test_rpn)
{
    char* tests[][10] = {
        {"42", NULL},
        {"2", "3", "+", NULL},
        {"2", "3", "*", NULL},
		{"2", "1", "-", NULL},
		{"4", "2", "/", NULL},
        {"2", "3", "+", "2", "*", NULL}
    };

    char* results[] = {
        "42",
        "5",
        "6",
		"1",
		"2",
        "10"
    };

    for (size_t i = 0; i < sizeof(tests)/sizeof(tests[0]); i++) {
        char** result = (char**)malloc(sizeof(char*));
	    *result = (char*)malloc(sizeof(char));
        rpn_eval(tests[i], result);
        ck_assert_str_eq(*result, results[i]);
        free(*result);
        free(result);
    }
}
END_TEST

START_TEST(test_rpn_err)
{
    char* tests[][10] = {
        {"42", NULL},
        {"foo", NULL},
        {"-", NULL},
        {"2", "+", NULL},
        {"2", "4", NULL},
        {"2", "4", "6", NULL}
    };

    int results[] = {
        0,
        -1,
        -2,
        -2,
        -3,
        -3
    };

    for (size_t i = 0; i < sizeof(tests)/sizeof(tests[0]); i++) {
        char** result = (char**)malloc(sizeof(char*));
	    *result = (char*)malloc(sizeof(char));
        int val = rpn_eval(tests[i], result);
        ck_assert_int_eq(val, results[i]);
        free(*result);
        free(result);
    }
}
END_TEST

static Suite*
gdb_suite(void)
{
    Suite *s;
    TCase *tc_rpn, *tc_rpn_err, *tc_stack;

    s = suite_create("all");
    tc_rpn = tcase_create("rpn");
    tc_rpn_err = tcase_create("rpn_err");
	tc_stack = tcase_create("stack");

    tcase_add_test(tc_rpn, test_rpn);
    suite_add_tcase(s, tc_rpn);
    tcase_add_test(tc_rpn_err, test_rpn_err);
    suite_add_tcase(s, tc_rpn_err);
	tcase_add_test(tc_stack, test_stack);
    suite_add_tcase(s, tc_stack);
    return s;
}

int main(void)
{
    int number_failed;
    Suite *s;
    SRunner *sr;

    s = gdb_suite();
    sr = srunner_create(s);

    srunner_run_all(sr, CK_NORMAL);
    number_failed = srunner_ntests_failed(sr);
    srunner_free(sr);
    return (number_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}

