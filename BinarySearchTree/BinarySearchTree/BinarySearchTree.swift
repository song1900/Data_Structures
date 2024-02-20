//
//  BinarySearchTree.swift
//  BinarySearchTree
//
//  Created by 송우진 on 2/19/24.
//

import Foundation

class BinarySearchTree<T: Comparable> {
    var root: Node<T>?
    
    func insert(value: T) {
        guard let root = self.root else {
            return self.root = Node(data: value)
        }
        
        var node: Node = root
        
        while true {
            if node.data > value {
                if node.left == nil {
                    node.left = Node(data: value)
                    break
                }else {
                    node = node.left!
                }
            }else {
                if node.right == nil {
                    node.right = Node(data: value)
                    break
                }else {
                    node = node.right!
                }
            }
        }
            
    }
    
    public func search(value:T) -> Bool {
        var node: Node? = root
        while node != nil {
            if node!.data == value {
                return true
            }
            node = node!.data > value ? node?.left : node?.right
        }
        return false
    }
    
    func printChild(node: Node<Int>?) {
        if node == nil { return }
        print("\(node!.data)의 왼쪽 자식 :\(node!.left?.data)")
        print("\(node!.data)의 오른쪽 자식 :\(node!.right?.data)")
        printChild(node: node!.left)
        printChild(node: node!.right)
    }
}
