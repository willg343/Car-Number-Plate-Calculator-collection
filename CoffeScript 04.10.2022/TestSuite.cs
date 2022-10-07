tests = [
  [[19,'aaa020'], [50,'aaa051'], [187,'aaa188'], [5000,'faa006'], [12354,'maa367'], [43056,'rba100'], [703100,'bbb804'], [999997,'mmb998']],
  [[1234000,'nvb236'], [2107294,'ddd404'], [3801260,'jqf066'], [6458209,'qoj674']],
  [[10347052,'jip410'], [10598400,'bsp010'], [12012012,'mur037'], [15400451,'xuw867'], [16008913,'isx938'], [17558423,'zzz999']]
]

Test.describe("Numbers between 0 and 1,000,000",()->
  for test in tests[0]
      Test.assertEquals(findTheNumberPlate(test[0]), test[1])
)

Test.describe("Numbers between 1,000,000 and 10,000,000",()->
  for test in tests[1]
      Test.assertEquals(findTheNumberPlate(test[0]), test[1])
)

Test.describe("Numbers between 10,000,000 and 17,558,423",()->
  for test in tests[2]
    Test.assertEquals(findTheNumberPlate(test[0]), test[1])
)

alph = "abcdefghijklmnopqrstuvwxyz"

solution = (n) ->
    right = Math.floor(Math.floor(n / 999 ) / 676)
    middle = Math.floor((Math.floor(n / 999) - 676 * right) / 26)
    left = Math.floor(n/999)-right*676-middle*26
    return "#{alph.charAt(left)}#{alph.charAt(middle)}#{alph.charAt(right)}#{String(n%999+1).padStart(3,'0')}"
  
Test.describe("Random tests", () ->
  for i in [0..99]
    n = Math.floor(Math.random()*17558423)
    Test.it("Testing for #{n}", ()->
      Test.assertEquals(findTheNumberPlate(n),solution(n))
    )
)
