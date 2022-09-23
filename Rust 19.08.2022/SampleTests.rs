/*
  The sample test suite is developed by the following CodeWars user: www.codewars.com/users/akar-0
*/


// See https://doc.rust-lang.org/stable/rust-by-example/testing/unit_testing.html

#[cfg(test)]
mod tests {
    use super::find_the_number_plate;
        
    fn dotest(n: u32, expected: &str) {
        let actual = find_the_number_plate(n);
        assert!(actual == expected, 
            "With n = {n}\nExpected \"{expected}\" but got \"{actual}\"")
    }

    #[test]
    fn fixed_tests() {
        dotest(3,"aaa004");
        dotest(1487,"baa489");
        dotest(40000,"oba041");
        dotest(17558423,"zzz999");
        dotest(43056,"rba100");
        dotest(234567,"aja802");
    }
}
