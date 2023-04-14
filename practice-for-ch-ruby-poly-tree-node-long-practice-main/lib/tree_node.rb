class PolyTreeNode

    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    # assign child to its parent
    # assign parent to the child
    def parent=(value)
        unless value == nil
            @parent = value
            if !children.include?(self)
                value.children << self
            end
        end
    end
  
end