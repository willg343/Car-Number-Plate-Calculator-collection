example = [[3,'aaa004'],
           [1487,'baa489'],
           [40000,'oba041'],
           [17558423,'zzz999'],
           [234567,'aja802'],
           [43056, 'rba100']]
describe 'example tests' do
  for i in 0...example.length
    it"testing for #{example[i][0]}" do
      Test.assert_equals(find_the_number_plate(example[i][0]),example[i][1])
end end end
