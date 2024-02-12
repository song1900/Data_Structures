//
//  main.swift
//  LinkedList
//
//  Created by 송우진 on 2/12/24.
//

import Foundation

var list = LinkedList<Int>()

print("add nodes")
list.add(node: Node(id: 1, data: 8))
list.add(node: Node(id: 2, data: 11))
list.add(node: Node(id: 3, data: 25))
list.add(node: Node(id: 4, data: 31))
list.add(node: Node(id: 5, data: 68))
list.add(node: Node(id: 6, data: 50))
list.showList()

print("delete node data 8")
print(list.delete(node: list.searchNode(data: 8)!))
list.showList()

print("search node data 8")
print(list.searchNode(data: 8))

print("delete node data 25")
list.delete(node: list.searchNode(data: 25)!)
list.showList()


print("insert node after node with id 2")
list.insert(node: Node(id: 99, data: 100), after: 2)
list.showList()

print("insert node before node with id 99")
list.insert(node: Node(id: 7, data: 1), before: 99)
list.showList()
