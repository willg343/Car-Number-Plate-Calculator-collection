/*
  The sample test suite is developed by the following CodeWars user: www.codewars.com/users/akar-0
*/

module solution_test;

import solution : findTheNumberPlate;
import std.string : format;

version(unittest) import fluent.asserts;

void dotest(uint n, string expected)
{
    findTheNumberPlate(n)
        .should.equal(expected)
        .because("n = %d".format(n));
}

@("Basic tests")
unittest {
    dotest(3,"aaa004");
    dotest(1487,"baa489");
    dotest(40000,"oba041");
    dotest(17558423,"zzz999");
    dotest(43056,"rba100");
    dotest(234567,"aja802");
}
