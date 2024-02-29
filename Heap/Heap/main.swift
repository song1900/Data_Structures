//
//  main.swift
//  Heap
//
//  Created by 송우진 on 2/27/24.
//

import Foundation

print("Hello, World!")


var heap = MaxHeap(nodes: [1,5,3])

print(heap)
heap.insert(4)
heap.insert(2)
heap.insert(1)
heap.insert(2)
print(heap)
heap.remove()
print(heap)
heap.remove()
print(heap)
heap.remove()
print(heap)
heap.insert(7)
heap.insert(5)
print(heap)
