//
//  BinarySearchTree.swift
//  BinarySearchTree
//
//  Created by 송우진 on 2/19/24.
//

import Foundation

struct BinarySearchTree<T: Comparable> {
    var root: Node<T>?
    
    mutating func insert(value: T) {
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
    
    func search(value:T) -> Bool {
        var node: Node? = root
        while node != nil {
            if node!.data == value {
                return true
            }
            node = node!.data > value ? node?.left : node?.right
        }
        return false
    }
    
    mutating func remove(value: T) {
        guard root == nil else {
            return
        }
        
        var parent: Node = root!
        var node: Node? = root
        
        while node != nil {
            if node!.data == value {
                
                if node?.left != nil && node?.right != nil { // 자식이 모두 존재
                    let rightChild = node?.right
                    node = findLeftChildMaxValue(node: node!.left!)
                    node?.right = rightChild
                    
                } else if node?.left != nil { // 자식이 왼쪽만 존재
                    if node!.data < parent.data {
                        parent.left = node?.left
                    } else {
                        parent.right = node?.left
                    }
                    
                } else if node?.right != nil { // 자식이 오른쪽만 존재
                    if node!.data < parent.data {
                        parent.left = node?.right
                    } else {
                        parent.right = node?.right
                    }
                } else { // 자식이 없음
                    if node?.data == root?.data {
                        root = nil
                        return
                    }
                    if node!.data < parent.data {
                        parent.left = nil
                    } else {
                        parent.right = nil
                    }
                    
                }
                
                if value == root?.data {
                    self.root = node!
                }
                break
            }
            
            parent = node!
            node = node!.data > value ? node?.left : node?.right
        }
    }
    
    private func findLeftChildMaxValue(node:Node<T>) -> Node<T> {
        var parent:Node<T> = node
        var rightChild:Node? = node.right
        
        while rightChild?.left != nil {
            rightChild = rightChild?.right!
            parent = rightChild!
        }
        if rightChild?.left != nil {
            parent.left = rightChild?.left
        }
        return rightChild ?? parent
    }
    
}

extension BinarySearchTree: CustomStringConvertible {
    var description: String {
        guard let root = root else { return "Empty tree"}
        return String(describing: root)
    }
}
