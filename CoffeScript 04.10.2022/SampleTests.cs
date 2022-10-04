tests =[[3,'aaa004'],
        [1487,'baa489'],
        [40000,'oba041'],
        [17558423,'zzz999'],
        [234567,'aja802'],
        [43056, 'rba100']]

Test.describe("Simple tests",()->
    for test in tests
      Test.it("Testing for #{test[0]}", ()->
        Test.assertEquals(findTheNumberPlate(test[0]), test[1])
      )
)
