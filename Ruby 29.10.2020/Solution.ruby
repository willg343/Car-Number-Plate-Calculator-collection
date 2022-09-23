def find_the_number_plate(n)
  
  series = (n/999).floor()
  
  return [series%676%26+97,
            (series%676/26).floor()+97,
              (series/676).floor()+97].map(&:chr).
                join+(n%999+1).to_s.rjust(3,'0')  
end
