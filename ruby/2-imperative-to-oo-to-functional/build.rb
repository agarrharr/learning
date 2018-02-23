# Vim command to create mapping to run
# :map <leader>t :w\|:!touch a.html && rm -f *.html && ruby build.rb && ls -l *.html && cat *.html<cr>

require "rdiscount"

def main
  paths.each do |path|
    write_compiled(path)
  end
end

def paths
  Dir["*.md"]
end

def read(path)
  File.read(path)
end

def compile(path)
  RDiscount.new(read(path)).to_html
end

def new_path(path)
  path.sub(/\.md$/, ".html")
end

def write_compiled(path)
  File.write(new_path(path), compile(path))
end

main
