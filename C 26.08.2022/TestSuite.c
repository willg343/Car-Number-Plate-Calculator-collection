/*
  The random test suite is developed by the following CodeWars user: www.codewars.com/users/porkfreezer
*/

#include <criterion/criterion.h>
#include <unistd.h>
#include <time.h>
#include <stdio.h>

char *find_the_number_plate(int id);

static void do_test(int id, const char *plate) {
  char *actual = find_the_number_plate(id);
  cr_assert_str_eq(plate, actual, "Expected %s for %d, but got %s", plate, id, actual);
  if (actual)
    free(actual);
}

Test(number_plates, should_pass_random_tests) {
  srand(time(NULL));
  for (int i = 0; i < 100; i++) {
    int input = rand() % (999*26*26*26);

    char expected[7];
    int id = input;
    int sn = id % 999 + 1;
    char l1 = (id /= 999) % 26 + 'a';
    char l2 = (id /= 26) % 26 + 'a';
    char l3 = (id / 26) % 26 + 'a';
    sprintf(expected, "%c%c%c%03d", l1, l2, l3, sn);

    do_test(input, expected);
  }
}

Test(number_plates, should_pass_basic_tests) {
  do_test(3, "aaa004");
  do_test(1487, "baa489");
  do_test(40000, "oba041");
  do_test(17558423, "zzz999");
  do_test(10598400, "bsp010");
  do_test(234567, "aja802");
  do_test(43056, "rba100");
}
