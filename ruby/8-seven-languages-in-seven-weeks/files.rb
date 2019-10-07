# Method 1
# file = File.open('cities.txt')
# file_data = file.read
# file.close
# puts file_data

# Method 2
# file_data = File.read('cities.txt')
# puts file_data

# Method 3
# file_data = File.readlines('cities.txt').map(&:chomp)
# puts file_data

# Method 4
File.foreach('cities.txt') { |line| puts line }
