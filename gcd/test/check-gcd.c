/*
 * check-gcd.c --
 */

#include <stdlib.h>
#include <check.h>

#include "../src/gcd.h"

/*
 * We introduce a simple data structure so that we can make test cases
 * for the gcd and lcm functions data driven.
 */

typedef struct {
    int a;	/* input a */
    int b;	/* input b */
    int r;	/* result r */
} abg_t;

START_TEST(test_gcd)
{
    abg_t tests[] = {
	{ 0, 0, 0 },
	{ 1, 1, 1 },
	{ 1, 0, 1 },
	{ 0, 1, 1 },
	{ 299792458, 6447287, 511 },
	{ -299792458, -6447287, 511 },
	{ 7, 0, 7 }
    };

    for (size_t i = 0; i < sizeof(tests)/sizeof(tests[0]); i++) {
	ck_assert_int_eq(gcd(tests[i].a, tests[i].b), tests[i].r);
	ck_assert_int_eq(gcd(tests[i].b, tests[i].a), tests[i].r);
    }
}
END_TEST

START_TEST(test_lcm)
{
    abg_t tests[] = {
	{ 3, 5, 15 }
    };

    for (size_t i = 0; i < sizeof(tests)/sizeof(tests[0]); i++) {
	ck_assert_int_eq(lcm(tests[i].a, tests[i].b), tests[i].r);
	ck_assert_int_eq(lcm(tests[i].b, tests[i].a), tests[i].r);
    } 
}
END_TEST

static Suite*
gdb_suite(void)
{
    Suite *s;
    TCase *tc_gcd, *tc_lcm;

    s = suite_create("all");
    tc_gcd = tcase_create("gcd");
    tc_lcm = tcase_create("lcm");

    tcase_add_test(tc_gcd, test_gcd);
    suite_add_tcase(s, tc_gcd);
    tcase_add_test(tc_lcm, test_lcm);
    suite_add_tcase(s, tc_lcm);
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

