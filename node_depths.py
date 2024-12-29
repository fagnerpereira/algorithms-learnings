from typing import Self

class BST:
    def __init__(self, value):
        self.value = value
        self.left = None
        self.right = None

    def insert(self, value):
        currentNode = self
        while True:
            if currentNode.left is None:
                currentNode.left = BST(value)
                break
            else:

            elif currentNode.right is None:
                currentNode.right = BST(value)
                break
            else:
                currentNode = currentNode.right

    def nodeDepths(self):
        return self.traverse(root, 0, 0)

    def traverse(self, node, depth, sum):
        if node is None:
            return sum

        self.traverse(node.left, depth + 1, sum)

        self.traverse(node.right, depth + 1, sum)

        print(node.value, depth, sum)

        return sum

root = BST(1)
root.insert(2)
root.insert(3)
root.insert(4)
root.insert(5)
root.insert(6)
root.insert(7)
root.insert(8)
root.insert(9)
# root.nodeDepths()