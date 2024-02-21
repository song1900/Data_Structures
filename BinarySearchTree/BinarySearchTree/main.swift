//
//  main.swift
//  BinarySearchTree
//
//  Created by 송우진 on 2/18/24.
//

import Foundation

var bst = BinarySearchTree<Int>()

bst.insert(value: 3)
bst.insert(value: 1)
bst.insert(value: 4)
bst.insert(value: 0)
bst.insert(value: 2)
bst.insert(value: 5)
print(bst)

print(bst.contains(value: 11)) //false

bst.remove(value: 4)
print(bst)
