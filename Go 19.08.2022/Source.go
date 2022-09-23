/*
  The source code is authored by the following CodeWars User: www.codewars.com/users/akar-0
*/

package kata

import (
  "math"
  "fmt"
)

func FindTheNumberPlate(n int) string {
  var res []rune
  for _,i := range []float64{2.0,1.0,0.0} {
    d := 999 * int(math.Pow(26.0, i))
    l := n / d
    n %= d
    res = append([]rune{rune(l+97)}, res...)
  }
  return string(res) + fmt.Sprintf("%03d", n+1)
}
