class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @node_name = name
    @children = children
  end

  def self.create(hash)
    hash.map {|name, tree|
      Tree.new(name, Tree.create(tree))
    }
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block }
  end

  def visit(&block)
    block.call self
  end

  def to_s
    "%s => [%s]" % [@node_name, @children.map{|x| x.to_s}.reduce{|i,n| "#{i}, #{n}"}]
  end
end

puts Tree.create({"hello" => { "rawr" => {}, "hi" => {} } } )