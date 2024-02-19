//
//  Node.swift
//  BinarySearchTree
//
//  Created by 송우진 on 2/19/24.
//

import Foundation

class Node<T: Comparable> {
    var data: T
    var left: Node?
    var right: Node?
    
    init(data: T) {
        self.data = data
    }
}
