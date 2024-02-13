//
//  Node.swift
//  DoublyLinkedList
//
//  Created by 송우진 on 2/13/24.
//

import Foundation

class Node<T> {
    let id: Int
    var prev: Node?
    var data: T
    var next: Node?
    
    init(id: Int, prev: Node? = nil, data: T, next: Node? = nil) {
        self.id = id
        self.prev = prev
        self.data = data
        self.next = next
    }
}
