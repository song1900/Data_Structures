//
//  main.swift
//  BinarySearchTree
//
//  Created by 송우진 on 2/18/24.
//

import Foundation

var bst = BinarySearchTree<Int>()

bst.insert(data: 10)
bst.insert(data: 11)
bst.insert(data: 8)
bst.insert(data: 1)
bst.insert(data: 3)
bst.printChild(node: bst.root)
