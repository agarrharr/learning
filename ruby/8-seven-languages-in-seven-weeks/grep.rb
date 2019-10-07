file_data = File.readlines('cities.txt').map(&:chomp)

file_data.each_index {|i|
  index = file_data[i] =~ /oung/
  puts "#{i + 1}: #{file_data[i]}" unless index.nil?
}
