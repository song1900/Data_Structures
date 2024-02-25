//
//  Node.swift
//  AVLTree
//
//  Created by 송우진 on 2/23/24.
//

import Foundation

class AVLNode<T:Comparable> {
    var value:T
    var leftChild:AVLNode?
    var rightChild:AVLNode?
    var height:Int = 0

    var leftHeight:Int {
        return leftChild?.height ?? -1
    }
    
    var rightHeight:Int {
        return rightChild?.height ?? -1
    }
    
    var balanceFactor:Int {
        return leftHeight - rightHeight
    }
    
    init(value:T) {
        self.value = value
    }
}

extension AVLNode : CustomStringConvertible {
    public var description: String {
        return diagram(for: self)
    }
    private func diagram(for node: AVLNode?,
                         _ top: String = "",
                         _ root: String = "",
                         _ bottom: String = "") -> String {
       guard let node = node else {
            return root + "nil\n"
        }
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        return diagram(for: node.rightChild, top + " ", top + "┌──", top + "│ ")
            + root + "\(node.value)\n"
            + diagram(for: node.leftChild, bottom + "│ ", bottom + "└──", bottom + " ")
    }

}
