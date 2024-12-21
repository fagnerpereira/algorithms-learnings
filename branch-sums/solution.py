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

    def branchSums(self):
        sums = []
        self.calculateBranches(self, 0, sums)

    def calculateBranches(self, node, sum, sums):
        print(sums)
        if node is None:
            return
        sum += node.value
        if node.left is None and node.right is None:
            sums.append(sum)

        self.calculateBranches(node.left, sum, sums)
        self.calculateBranches(node.right, sum, sums)

root = BST(10)
root.insert(5)
root.insert(2)
root.insert(1)
root.insert(5)
root.insert(15)
root.insert(13)
root.insert(14)
root.insert(22)
root.branchSums()