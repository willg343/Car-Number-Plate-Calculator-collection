/*
    The test suite is developed by the following CodeWars user: www.codewars.com/users/Reargem
*/

import java.util.function.IntFunction;
import org.junit.Test;
import static org.junit.Assert.assertEquals;
import org.junit.runners.JUnit4;

// TODO: Replace examples and use TDD by writing your own tests

public class SolutionTest {
    @Test
    public void testSmallNumbers() {
        test("aaa020", 19);
        test("aaa051", 50);
        test("aaa188", 187);
        test("faa006", 5000);
        test("maa367", 12354);
        test("rba100", 43056);
        test("bbb804", 703100);
        test("mmb998", 999997);
    }
    
    @Test
    public void testMediumNumbers() {
        test("nvb236", 1234000);
        test("ddd404", 2107294);
        test("jqf066", 3801260);
        test("qoj674", 6458209);
    }
    
    @Test
    public void testLargeNumbers() {
        test("jip410", 10347052);
        test("bsp010", 10598400);
        test("mur037", 12012012);
        test("xuw867", 15400451);
        test("isx938", 16008913);
        test("zzz999", 17558423);
    }
    
    @Test
    public void randomTests() {
        IntFunction<String> solution = customerID -> {
            StringBuilder stringBuilder = new StringBuilder();
            int n = customerID / 999;
            for (int i = 0; i < 3; i++) {
                int m = (int) Math.pow(26, 2 - i);
                stringBuilder.append((char) (n / m + 'a'));
                n %= m;
            }
            return stringBuilder.reverse().append(String.format("%03d", customerID % 999 + 1)).toString();
        };
        for (int i = 0; i < 100; i++) {
            int n = (int) (Math.random() * 17558424);
            test(solution.apply(n), n);
        }
    }
    
    private void test(String expected, int customerID) {
        assertEquals(expected, Solution.findTheNumberPlate(customerID));
    }
}
