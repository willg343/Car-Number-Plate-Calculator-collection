tests = [[[19,'aaa020'], [50,'aaa051'], [187,'aaa188'], [5000,'faa006'], [12354,'maa367'], [43056,'rba100'], [703100,'bbb804'], [999997,'mmb998']],
             [[1234000,'nvb236'], [2107294,'ddd404'], [3801260,'jqf066'], [6458209,'qoj674']],
             [[10347052,'jip410'], [10598400, 'bsp010'], [12012012,'mur037'], [15400451,'xuw867'], [16008913,'isx938'], [17558423,'zzz999']]]
titles = ['Numbers between 0 and 1000000',"Numbers between 1000000 and 10000000",'Numbers between 10000000 and 17558423']

for i in 0...titles.length
  describe titles[i] do
    for j in 0...tests[i].length do
      t = tests[i][j]
      it "Testing for #{t[0]}" do
        Test.assert_equals(find_the_number_plate(t[0]),t[1])
      end
    end
  end
end

def solution(n)
  
  series = (n/999).floor()
  
  return [series%676%26+97,
            (series%676/26).floor()+97,
              (series/676).floor()+97].map(&:chr).
                join+(n%999+1).to_s.rjust(3,'0')  
end
  
describe "Random Tests" do
  (0...100).each do |_|
    number = rand(0..17558423)
      it "Testing for(#{number})" do
        Test.assert_equals(find_the_number_plate(number), solution(number))
    end
  end
end
