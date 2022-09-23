/*
    This translation is authored by the following CodeWars user: www.codewars.com/users/Reargem
*/

public class Solution {
    public static String findTheNumberPlate(int customerID) {
        StringBuilder stringBuilder = new StringBuilder();
        int n = customerID / 999;
        for (int i = 0; i < 3; i++) {
            int m = (int) Math.pow(26, 2 - i);
            stringBuilder.append((char) (n / m + 'a'));
            n %= m;
        }
        return stringBuilder.reverse().append(String.format("%03d", customerID % 999 + 1)).toString();
    }
}
