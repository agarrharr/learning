class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    if (name.instance_of? Hash)
      initializeHash(name.first[0], name.first[1])
    else
      if (children.instance_of? Hash)
        initializeHash(name, children)
      else
        @children = children
        @node_name = name
      end
    end
  end

  def initializeHash(name, children=[])
    @node_name = name
    @children = children.keys.map {|key| Tree.new(key, children[key])}
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block }
  end

  def visit(&block)
    block.call self
  end
end


# Method 1 of creating a tree
ruby_tree = Tree.new("Ruby",
                     [Tree.new("Reia"),
                      Tree.new("MacRuby")])
puts 'Visiting a node'
ruby_tree.visit {|node| puts node.node_name}
puts

puts 'Visiting entire tree'
ruby_tree.visit_all {|node| puts node.node_name}
puts

# Method 1 of creating a tree with a clean user interface
ruby_tree = Tree.new({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}})
puts 'Visiting a node'
ruby_tree.visit {|node| puts node.node_name}
puts

puts 'Visiting entire tree'
ruby_tree.visit_all {|node| puts node.node_name}
