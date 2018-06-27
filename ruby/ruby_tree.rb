class Tree
	attr_accessor :children, :node_name

	def initialize(input) 
		@node_name = input.keys[0]
		@children = input.values[0].collect {|k,v| Tree.new({k => v})}
	end
	
	def visit_all(&block)
		visit &block	
		children.each {|c| c.visit_all &block}
	end
	
	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new({
				"mary" => {
					"lesley" => {
						"emma" => {},
						"jenny" => {}
					},
					"ray" => {
						"andrew" => {},
						"an other" => {}
					}
				}
	
})

puts "visting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}					
