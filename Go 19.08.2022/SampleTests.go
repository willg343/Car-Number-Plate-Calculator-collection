/*
  The sample test suite is developed by the following CodeWars user: www.codewars.com/users/akar-0
*/

// TODO: replace with your own tests (TDD). An example to get you started is included below.
// Ginkgo BDD Testing Framework <http://onsi.github.io/ginkgo/>
// Gomega Matcher Library <http://onsi.github.io/gomega/>

package kata_test
import (
  . "github.com/onsi/ginkgo"
  . "github.com/onsi/gomega"
  . "codewarrior/kata"
)

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
     })
})
