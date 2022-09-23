/*
  The source code was authored by the following CodeWars user: www.codewars.com/users/porkfreezer
*/

#include <stdlib.h>
#include <stdio.h>

char *find_the_number_plate(int id) {
  char *out = calloc(7, 1);
  int sn = id % 999 + 1;
  char l1 = (id /= 999) % 26 + 'a';
  char l2 = (id /= 26) % 26 + 'a';
  char l3 = (id / 26) % 26 + 'a';
  sprintf(out, "%c%c%c%03d", l1, l2, l3, sn);
  return out;
}
