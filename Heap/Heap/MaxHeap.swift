//
//  MaxHeap.swift
//  Heap
//
//  Created by 송우진 on 2/29/24.
//

import Foundation
struct MaxHeap {
    var nodes: [Int] = []
    
    init(nodes:[Int]) {
        nodes.forEach {
            insert($0)
        }
    }
    
    private func getLeftChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    private func getRightChildIndex(_ parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    private func getParentIndex(_ childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    private func hasLeftChild(_ index: Int) -> Bool {
        return getLeftChildIndex(index) < nodes.count
    }
    private func hasRightChild(_ index: Int) -> Bool {
        return getRightChildIndex(index) < nodes.count
    }
    private func hasParent(_ index: Int) -> Bool {
        return getParentIndex(index) >= 0
    }
    
    mutating private func heapifyUp() {
        var index = nodes.count - 1
        while hasParent(index) && nodes[getParentIndex(index)] < nodes[index] {
            nodes.swapAt(getParentIndex(index),index)
            index = getParentIndex(index)
        }
    }
    
    mutating func insert(_ node:Int) {
        nodes.append(node)
        heapifyUp()
    }
}
