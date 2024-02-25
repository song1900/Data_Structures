//
//  AVLTree.swift
//  AVLTree
//
//  Created by 송우진 on 2/23/24.
//

import Foundation

struct AVLTree<T: Comparable> {
    var root: AVLNode<T>?
    
    private func isBalanced(_ node: AVLNode<T>) -> Bool {
        return abs(node.balanceFactor) != 2
    }
    
    
    private func leftBalanced(_ node: AVLNode<T>) -> AVLNode<T> {
        if let leftChild = node.leftChild, leftChild.balanceFactor == -1 {
            return leftRightRotate(node)
        }else {
            return rightRotate(node)
        }
    }
    
    private func rightBalanced(_ node: AVLNode<T>) -> AVLNode<T> {
        if let rightChild = node.rightChild, rightChild.balanceFactor == 1 {
            return rightLeftRotate(node)
        }else {
            return leftRotate(node)
        }
    }
    
    private func rightRotate(_ node: AVLNode<T>) -> AVLNode<T> {
        let middle = node.leftChild!
        node.leftChild = middle.rightChild
        middle.rightChild = node
        node.height = max(node.leftHeight, node.rightHeight) + 1
        middle.height = max(middle.leftHeight, middle.rightHeight) + 1
        return middle
    }

    private func leftRotate(_ node: AVLNode<T>) -> AVLNode<T>{
        let middle = node.rightChild!
        node.rightChild = middle.leftChild
        middle.leftChild = node
        node.height = max(node.leftHeight, node.rightHeight) + 1
        middle.height = max(middle.leftHeight, middle.rightHeight) + 1
        return middle
    }
    
    private func rightLeftRotate(_ node: AVLNode<T>) -> AVLNode<T> {
        node.rightChild = rightRotate(node.rightChild!)
        return leftRotate(node)
    }
    
    private func leftRightRotate(_ node: AVLNode<T>) -> AVLNode<T> {
        node.leftChild = leftRotate(node.leftChild!)
        return rightRotate(node)
    }
    
    private func makeBalanced(_ node: AVLNode<T>) -> AVLNode<T> {
        if node.balanceFactor == 2 {
            return leftBalanced(node)
        }else {
            return rightBalanced(node)
        }
    }
    
    public mutating func insert(value: T) {
        root = insert(from: root, value: value)
    }
        
    private func insert(from node: AVLNode<T>?, value: T) -> AVLNode<T> {
        guard var node = node else {
            return AVLNode(value: value)
        }
        if value < node.value {
            node.leftChild = insert(from: node.leftChild, value: value)
        } else {
            node.rightChild = insert(from: node.rightChild, value: value)
        }
        if !isBalanced(node) {
            node = makeBalanced(node)
        }
        node.height = max(node.leftHeight, node.rightHeight) + 1
        return node
    }
    
    
}
