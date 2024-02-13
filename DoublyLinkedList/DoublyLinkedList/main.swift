//
//  main.swift
//  DoublyLinkedList
//
//  Created by 송우진 on 2/13/24.
//

import Foundation

var list = DoublyLinkedList<Int>()

for id in 0..<10 {
    list.add(node: Node(id: id, data: (0...100).randomElement()!))
}

list.showAll()

print("insert node with id 20 before node with id 1")
list.insert(node: Node(id: 20, data: 0), before: 1)
list.showAll()

print("insert node with id 40 after node with id 2")
list.insert(node: Node(id: 40, data: 99), after: 2)
list.showAll()


let deleteNode = list.delete(id: 6)
print("deleted node: \(deleteNode?.id), \(deleteNode?.data)")
list.showAll()

