class CsvRow
  def initialize(headers, row)
    @headers = headers
    @row = row
  end

  def method_missing name, *args
    index = @headers.index(name.to_s)
    @row[index]
  end
end

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.csv'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each(&block)
      @csv_contents.each {|row|
        csv_row = CsvRow.new(@headers, row)
        block.call(csv_row)
      }
    end
  end

  attr_accessor :headers, :csv_contents
  def initialize
    read
  end
end

class Cities
  include ActsAsCsv
  acts_as_csv
end

m = Cities.new
# puts m.headers.inspect
# puts m.csv_contents.inspect
m.each {|row| puts "#{row.city} is in #{row.country} with a population of #{row.population}"}
