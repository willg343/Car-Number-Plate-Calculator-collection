/*
    The sample test suite is developed by the following CodeWars User: www.codewars.com/users/Reargem
*/

import org.junit.Test;
import static org.junit.Assert.assertEquals;
import org.junit.runners.JUnit4;

// TODO: Replace examples and use TDD by writing your own tests

public class SolutionTest {
    @Test
    public void test() {
        assertEquals("aaa004", Solution.findTheNumberPlate(3));
        assertEquals("baa489", Solution.findTheNumberPlate(1487));
        assertEquals("oba041", Solution.findTheNumberPlate(40000));
        assertEquals("rba100", Solution.findTheNumberPlate(43056));
        assertEquals("zzz999", Solution.findTheNumberPlate(17558423));
        assertEquals("aja802", Solution.findTheNumberPlate(234567));
    }
}
