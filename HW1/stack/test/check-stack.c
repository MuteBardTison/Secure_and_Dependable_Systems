/*
 * check-stack.c --
 */

#include <stdlib.h>
#include <check.h>

#include "../src/stack.h"

const int kNumbers_of_element = 100;

START_TEST(test_stack)
{
    Stack * s;
    s = stack_new();
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
    //ck_assert_msg(stack_peek(s) == NULL, NULL);
    //ck_assert_msg(stack_pop(s) == NULL, NULL);
    stack_del(s);
}
END_TEST

static Suite*
gdb_suite(void)
{
    Suite *s;
    TCase *tc_stack;

    s = suite_create("all");
    tc_stack = tcase_create("stack");

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

