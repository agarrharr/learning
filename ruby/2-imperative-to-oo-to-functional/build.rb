# Vim command to create mapping to run
# :map <leader>t :w\|:!touch a.html && rm -f *.html && ruby build.rb && ls -l *.html && cat *.html<cr>
#
# Functional core, Imperative shell

require "rdiscount"

# Imperative shell
def main
  Dir["*.md"].each do |path|
    content = File.read(path)
    File.write(new_path(path), compile(content))
  end
end

def compile(content)
  RDiscount.new(content).to_html
end

def new_path(path)
  path.sub(/\.md$/, ".html")
end

main
