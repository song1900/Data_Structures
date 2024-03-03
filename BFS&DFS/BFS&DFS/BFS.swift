//
//  BFS.swift
//  BFS&DFS
//
//  Created by 송우진 on 3/3/24.
//

import Foundation

func BFS(graph: Graph, start: Int) -> [Int] {
    var visitedQueue: [Int] = []
    var needVisitQueue: [Int] = [start]
    
    while !needVisitQueue.isEmpty {
        let node: Int = needVisitQueue.removeFirst()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitQueue += graph.adjacencyList[node] ?? []
    }
    
    return visitedQueue
}
 
