# typed: false
require "pry"

class Tree
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def add(new_value)
    current_node = self

    loop do
      if new_value < current_node.value
        if current_node.left.nil?
          current_node.left = Tree.new(new_value)
          break
        else
          current_node = current_node.left
        end
      elsif new_value >= current_node.value
        if current_node.right.nil?
          current_node.right = Tree.new(new_value)
          break
        else
          current_node = current_node.right
        end
      end
    end
  end

  def traverse(node = self)
    p node.value
    traverse(node.left) if node.left
    traverse(node.right) if node.right
  end
end

tree = Tree.new(10)
tree.add(5)
tree.add(2)
tree.add(1)
tree.add(5)
tree.add(15)
tree.add(13)
tree.add(14)
tree.add(22)
tree.traverse
