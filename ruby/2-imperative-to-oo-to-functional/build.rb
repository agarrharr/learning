# Vim command to create mapping to run
# :map <leader>t :w\|:!touch a.html && rm -f *.html && ruby build.rb && ls -l *.html && cat *.html<cr>
#
# Looking at the OO code
# Pull out all of the mutation
# Pull out all of the access of external systems
# I want this to be referentially transparent
# Make Page an object composed of pure functions

require "rdiscount"

def main
  paths.each do |path|
    Page.new(path).write_compiled
  end
end

def paths
  Dir["*.md"]
end

class Page
  attr_reader :path

  def initialize(path)
    @path = path
  end

  # Impure function
  def read
    File.read(path)
  end

  def compile
    RDiscount.new(read).to_html
  end

  def new_path
    path.sub(/\.md$/, ".html")
  end

  # Impure function
  def write_compiled
    File.write(new_path, compile)
  end
end

main
