require "rdiscount"

def main
  paths = Dir["*.md"]
  paths.each do |path|
    content = File.read(path)
    compiled = RDiscount.new(content).to_html
    new_path = path.sub(/\.md$/, ".html")
    File.write(new_path, compiled)
  end
end

main

# map key to run
# :map <leader>t :w\|:!rm -f *.html && ruby build.rb && ls -l *.html && cat *.html<cr>
