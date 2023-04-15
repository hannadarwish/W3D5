class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    # assign child to its parent
    # assign parent to the child
    def parent=(new_parent)
        if self.parent == nil
            @parent = new_parent
            new_parent.children << self
        else
            #!new_parent.children.include?(self)
            self.parent.children.delete(self)
            if new_parent != nil
                new_parent.children << self
            end
            @parent = new_parent
        end  
    end

    def add_child(new_child)
        new_child.parent = self
        self.children << new_child if !self.children.include?(new_child)
    end

    def remove_child(selected_child)
        self.children.delete(selected_child)
        selected_child.parent = nil
    end
    
end