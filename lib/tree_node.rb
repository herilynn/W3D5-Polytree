class PolyTreeNode

    # include Searchable
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

    def add_child(node)
        node.parent = self
        self.children << node if !self.children.include?(node)
    end

    def remove_child(node)
        node.parent = nil 
        if !self.children.include?(node)
            raise 
        end
    end

    def dfs(target)
        return self if target == self.value
        return nil if children.empty?
        # if !children.empty?
            self.children.each do |child|
                # if child.value == target
                #     return child 
                # else
                    result = child.dfs(target)
                    return result if result != nil # = nil
                # end
            end
        # end
        return nil
    end
end

# module Searchable 
#     def dfs(target)
#         if !self.children.empty?
#             self.children.each do |child|
#                 if child == target
#                     return child 
#                 else
#                     child.dfs(target)
#                 end
#             end
#         end
#     end
# end