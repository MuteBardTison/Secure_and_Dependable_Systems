/*
 * check-rpn.c --
 */

#include <stdlib.h>
#include <check.h>

#include "../src/stack.h"
#include "../src/rpn.h"

START_TEST(test_rpn)
{
    char* tests[][10] = {
        {"42", NULL},
        {"2", "3", "+", NULL},
        {"2", "3", "*", NULL},
        {"2", "3", "+", "2", "*", NULL}
    };

    char* results[] = {
        "42",
        "5",
        "6",
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
    TCase *tc_rpn, *tc_rpn_err;

    s = suite_create("all");
    tc_rpn = tcase_create("rpn");
    tc_rpn_err = tcase_create("rpn_err");

    tcase_add_test(tc_rpn, test_rpn);
    suite_add_tcase(s, tc_rpn);
    tcase_add_test(tc_rpn_err, test_rpn_err);
    suite_add_tcase(s, tc_rpn_err);
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

