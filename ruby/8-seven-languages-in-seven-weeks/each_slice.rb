array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

array.each { |i|
  if i % 4 == 0
  puts "#{i} "
  else
  print "#{i} "
  end
}
puts

array.each_slice(4) { |i| puts i.join(' ') }
