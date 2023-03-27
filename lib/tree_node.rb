class PolyTreeNode
    # attr_accessor :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def value
        @value
    end
    
    def parent
        @parent
    end

    def children
        @children
    end

    def parent=(node = nil)
        if node.nil?
            @parent = nil
        elsif @parent != nil
            old_parent = @parent
            old_parent.children.delete_if{|ele| ele == self}
            @parent = node 
            node.children << self if !node.children.include?(self)
        else
            @parent = node 
            node.children << self if !node.children.include?(self)
        end
    end



end