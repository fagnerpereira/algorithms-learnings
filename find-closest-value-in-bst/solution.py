class BST:
    def __init__(self, value = None):
        self.value = value
        self.left = None
        self.right = None

    def insert(self, value):
        currentNode = self
        while True:
            if value < currentNode.value:
                if currentNode.left is None:
                    currentNode.left = BST(value)
                    break
                else:
                    currentNode = currentNode.left
            elif value >= currentNode.value:
                if currentNode.right is None:
                    currentNode.right = BST(value)
                    break
                else:
                    currentNode = currentNode.right

    def traverse(self):
        self.traverseNode(self)

    def traverseNode(self, node):
        if node.left:
            self.traverseNode(node.left)
        else:
            return node.value
        if node.right:
            self.traverseNode(node.right)
        else:
            return node.value

root = BST(10)
root.insert(5)
root.insert(2)
root.insert(1)
root.insert(5)
root.insert(15)
root.insert(13)
root.insert(14)
root.insert(22)
root.traverse()

# def findClosestValueInBst(tree, target):
#     closest = tree.value
#     currentNode = tree

#     while currentNode is not None:
#         if abs(currentNode.value - target) < abs(closest - target):
#             closest = currentNode.value

#         if currentNode.value < target:
#             currentNode = currentNode.right
#         else:
#             currentNode = currentNode.left

#     return closest

# closest = findClosestValueInBst(root, 21)
# print(closest)