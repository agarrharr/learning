# Vim command to create mapping to run
# :map <leader>t :w\|:!touch a.html && rm -f *.html && ruby build.rb && ls -l *.html && cat *.html<cr>
#
# Functional core, Imperative shell

require "rdiscount"

# Imperative shell
def main
  Dir["*.md"].each do |path|
    content = File.read(path)
    page = Page.new(path, content)
    File.write(page.new_path, page.compile)
  end
end

# Functional core
class Page
  attr_reader :path, :content

  def initialize(path, content)
    @path = path
    @content = content
  end

  def compile
    RDiscount.new(content).to_html
  end

  def new_path
    path.sub(/\.md$/, ".html")
  end
end

main
