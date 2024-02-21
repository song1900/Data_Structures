//
//  main.swift
//  BinarySearchTree
//
//  Created by 송우진 on 2/18/24.
//

import Foundation

var bst = BinarySearchTree<Int>()

bst.insert(value: 10)
bst.insert(value: 11)
bst.insert(value: 8)
bst.insert(value: 1)
bst.insert(value: 3)
bst.printChild(node: bst.root)

//print(bst.search(value: 11)) //true
//bst.search(value: 100) //false
//bst.search(value: 0) //false
//bst.search(value: 8) //true

print("=================")
bst.remove(value: 3)
bst.printChild(node: bst.root)
