examples =[[3,"aaa004"],
           [1487,"baa489"],
           [40000,"oba041"],
           [17558423,"zzz999"],
           [234567,"aja802"],
           [43056, "rba100"]]

describe "example tests" do
  (0...examples.size).each do |x|
    it "testing for #{examples[x][0]}" do
      find_the_number_plate(examples[x][0]).should eq examples[x][1]
    end
  end
end
