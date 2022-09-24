/*
  The random test suite is developed by the following CodeWars user: www.codewars.com/users/akar-0
*/

package kata_test
import (
  . "github.com/onsi/ginkgo"
  . "github.com/onsi/gomega"
  . "codewarrior/kata"
  "math/rand"
  "time"
  "math"
  "fmt"
)

func referenceSolution(n int) string {
  var res []rune
  for _,i := range []float64{2.0,1.0,0.0} {
    d := 999 * int(math.Pow(26.0, i))
    l := n / d
    n %= d
    res = append([]rune{rune(l+97)}, res...)
  }
  return string(res) + fmt.Sprintf("%03d", n+1)
}

func dotest(n int, expected string) {
     Expect(FindTheNumberPlate(n)).To(Equal(expected), "With n = %d", n)
}

var _ = Describe("Tests", func() {
     It("Sample tests", func() {
        dotest(3,"aaa004")
        dotest(1487,"baa489")
        dotest(40000,"oba041")
        dotest(17558423,"zzz999")
        dotest(43056,"rba100")
        dotest(234567,"aja802")
        dotest(10598400,"bsp010")
     })
     It("Random tests", func() {
       rand.Seed(time.Now().UTC().UnixNano())
       for i := 0 ; i < 100 ; i++ {
         n := rand.Intn(17558424)
         dotest(n, referenceSolution(n))
       }
     })
})
