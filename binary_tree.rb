# typed: false
class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def inspect
    "{val:#{@value} L:#{@left&.value.inspect} R:#{@right&.value.inspect}}"
  end

  def insert(value)
    # Using a queue for level-order insertion
    root = self
    queue = [root]

    until queue.empty?
      current = queue.shift

      # If left child is nil, insert here
      if current.left.nil?
        current.left = TreeNode.new(value)
        return
      else
        queue.push(current.left)
      end

      # If right child is nil, insert here
      if current.right.nil?
        current.right = TreeNode.new(value)
        return
      else
        queue.push(current.right)
      end
    end
  end

  def evaluate_expression_tree(root = self)
    return if root.nil?

    evaluate_expression_tree(root.left)
    evaluate_expression_tree(root.right)

    case root.value
    when -1
      p root.left.value + root.right.value
    when -2
      p root.right.value - root.left.value
    when -3
      p root.left.value / root.right.value
    when -4
      root.value, root.left, root.right =
        (root.left.value * root.right.value), nil, nil

    end
  end
end

tree = TreeNode.new(-1)
tree.insert(-2)
tree.insert(-3)
tree.insert(-4)
tree.insert(2)
tree.insert(8)
tree.insert(3)
tree.insert(2)
tree.insert(3)
tree.evaluate_expression_tree
