class PolyTreeNode
    #hi
    def initialize(new_node, children = [])
        @value = new_node
        @parent = nil
        @children = children
    end

    def parent
        @parent
    end

    def children
        @children
    end


end