# Vim command to create mapping to run
# :map <leader>t :w\|:!touch a.html && rm -f *.html && ruby build.rb && ls -l *.html && cat *.html<cr>

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

  def read
    File.read(path)
  end

  def compile
    RDiscount.new(read).to_html
  end

  def new_path
    path.sub(/\.md$/, ".html")
  end

  def write_compiled
    File.write(new_path, compile)
  end
end

main
