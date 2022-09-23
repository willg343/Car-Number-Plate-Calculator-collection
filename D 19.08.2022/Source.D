/*
  The source code is authored by the following CodeWars user: www.codewars.com/users/akar-0
*/

module solution;

import std.algorithm, std.math, std.string, std.array;

export string findTheNumberPlate(uint n) 
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
