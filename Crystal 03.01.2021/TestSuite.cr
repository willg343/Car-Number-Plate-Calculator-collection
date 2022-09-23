tests = [[[19,"aaa020"], [50,"aaa051"], [187,"aaa188"], [5000,"faa006"], [12354,"maa367"], [43056,"rba100"], [703100,"bbb804"], [999997,"mmb998"]],
         [[1234000,"nvb236"], [2107294,"ddd404"], [3801260,"jqf066"], [6458209,"qoj674"]],
         [[10347052,"jip410"], [10598400, "bsp010"], [12012012,"mur037"], [15400451,"xuw867"], [16008913,"isx938"], [17558423,"zzz999"]]]
titles =["Numbers between 0 and 1000000","Numbers between 1000000 and 10000000","Numbers between 10000000 and 17558423"]

(0...titles.size).each do |i|
  describe titles[i] do
    (0...tests[i].size).each do |j|
      t = tests[i][j]
      it "Testing for #{t[0]}" do
        find_the_number_plate(t[0]).should eq t[1]
      end 
    end
  end
end 

def solution (n)
  a,b = (n.to_i//999).divmod(676)
  c,d = b.divmod(26)
  [d+97,c+97,a+97].map{|x| x.to_i.chr}.join+(n.to_i%999+1).to_s.rjust(3).gsub(/ /,"0")
end
  
describe "Random Tests" do
    100.times do |_|
    number = rand(0..17558423)
      it "Testing for #{number}" do
        find_the_number_plate(number).should eq solution(number)
      end
    end
end
