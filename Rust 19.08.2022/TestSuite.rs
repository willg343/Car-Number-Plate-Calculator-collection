/*
  The test suite is developed by the following CodeWars user: www.codewars.com/users/akar-0
*/

#[cfg(test)]
mod tests {
    use rand::{thread_rng, Rng};
    use super::find_the_number_plate;
    use std::collections::HashMap;
    use lazy_static::lazy_static;
    use std::iter::FromIterator;

    lazy_static! {
        static ref H: HashMap<u32, char> = HashMap::from_iter(
            [(0, 'a'), (1, 'b'), (2, 'c'), (3, 'd'), (4, 'e'), (5, 'f'), (6, 'g'),
             (7, 'h'), (8, 'i'), (9, 'j'), (10, 'k'), (11, 'l'), (12, 'm'), (13, 'n'), 
             (14, 'o'), (15, 'p'), (16, 'q'), (17, 'r'), (18, 's'), (19, 't'), (20, 'u'),
             (21, 'v'), (22, 'w'), (23, 'x'), (24, 'y'), (25, 'z')
            ].iter().copied()
        );
    }

    fn reference_solution(mut n: u32) -> String {
        let mut v = Vec::new();
        let mut l = 0;
        [2,1,0]
        .iter()
        .for_each(|i| 
            {
                (l, n) = divmod(n, 999 * 26u32.pow(*i));
                v.push(H[&l]);
            }
        );
        v.iter().rev().collect::<String>() + &format!("{:0>3}", n+1)
    }

    fn divmod(a: u32, b: u32) -> (u32, u32) {
        (a / b, a % b)
    }
    
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
        dotest(10598400,"bsp010");
    }
    
    #[test]
    fn random_tests() {
        let mut rng = thread_rng();
        for _ in 0..100 {
            let n = rng.gen_range(0..=17558423);
            dotest(n, &reference_solution(n));
        }
    }
}
