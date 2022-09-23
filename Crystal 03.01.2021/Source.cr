def find_the_number_plate (n)
  a,b = (n.to_i//999).divmod(676)
  c,d = b.divmod(26)
  [d+97,c+97,a+97].map{|x| x.to_i.chr}.join+(n.to_i%999+1).to_s.rjust(3).gsub(/ /,"0")
end
