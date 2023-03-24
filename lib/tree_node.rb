class PolyTreeNode
    attr_accessor :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parents=(node)
        @parent = node 
        node.children << self 
    end

end