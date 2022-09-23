/*
  The test suite is developed by the following CodeWars user: www.codewars.com/users/akar-0
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
    dotest(10598400,"bsp010");
}

@("Random tests")
unittest
{
    import std.algorithm, std.math, std.string, std.array;

    string referenceSolution(uint n) 
    {
        alias mapper = (x) => cast(char) x + 97;
        string res;
        [2,1,0]
        .each!(
            (i)
            {
                auto d = 999 * 26.pow(i), l = n / d;
                n %= d;
                res ~= mapper(l);
            }
        );
        return "%s%03d".format(res.dup.reverse, n+1);
    }

    import std.random : Random, unpredictableSeed, uniform;
    auto rnd = Random(unpredictableSeed);
    foreach(_; 0 .. 100)
    {
        uint n = uniform(0, 17558424, rnd);
        dotest(n, referenceSolution(n));
    }
}
