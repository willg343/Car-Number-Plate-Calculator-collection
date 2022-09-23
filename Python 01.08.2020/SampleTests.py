# partially modified by the following CodeWars user: www.codewars.com/users/Blind4Basics

CONFIG = [
    (3,'aaa004'),
    (1487,'baa489'),
    (40000,'oba041'),
    (17558423,'zzz999'),
    (234567,'aja802'),
    (43056, 'rba100')
]

@test.describe("Basic tests")
def _():
    for inp,exp in CONFIG:
        @test.it('Testing for: '+str(inp))
        def _():
            test.assert_equals(find_the_number_plate(inp), exp)
