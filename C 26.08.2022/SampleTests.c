/*
  The sample test suite is developed by the following CodeWars user: https://www.codewars.com/users/porkfreezer
*/

#include <criterion/criterion.h>

char *find_the_number_plate(int id);

static void do_test(int id, const char *plate) {
  char *actual = find_the_number_plate(id);
  cr_assert_str_eq(plate, actual, "Expected %s for %d, but got %s", plate, id, actual);
  if (actual)
    free(actual);
}

Test(number_plates, should_pass_basic_tests) {
  do_test(3, "aaa004");
  do_test(1487, "baa489");
  do_test(40000, "oba041");
  do_test(17558423, "zzz999");
  do_test(234567, "aja802");
  do_test(43056, "rba100");
}
