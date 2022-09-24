# partially modified by the following CodeWars user: www.codewars.com/users/Blind4Basics

TESTS = [
    ('Numbers between 0 and 1000000',
        [(19,'aaa020'), (50,'aaa051'), (187,'aaa188'), (5000,'faa006'), (12354,'maa367'), (43056,'rba100'), (703100,'bbb804'), (999997,'mmb998')]
    ),
    ("Numbers between 1000000 and 10000000",
        [(1234000,'nvb236'), (2107294,'ddd404'), (3801260,'jqf066'), (6458209,'qoj674')]
    ),
    ('Numbers between 10000000 and 17558423',
        [(10347052,'jip410'), (10598400,'bsp010'), (12012012,'mur037'), (15400451,'xuw867'), (16008913,'isx938'), (17558423,'zzz999')]
    ),
]

for title,config in TESTS:
    @test.describe(title)
    def _():
        for inp,exp in config:
            @test.it('Testing for: '+str(inp))
            def _():
                test.assert_equals(find_the_number_plate(inp), exp)
        
@test.describe("Random tests")
def random_tests():
    from random import randint
    
    def find_the_number_plate(n):
      series = n//999
      right = series//26**2
      middle = series%26**2//26
      left = series%26**2%26
      return ''.join(map(chr,[97+left,97+middle,97+right]))+str(n%999+1).rjust(3,'0')
    
    for _ in range(100):
        n = randint(0,17558423)
        @test.it('Testing for: '+str(n))
        def _():
            exp = numberplate(n)
            test.assert_equals(find_the_number_plate(n), exp)
