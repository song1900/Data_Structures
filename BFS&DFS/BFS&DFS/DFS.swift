//
//  DFS.swift
//  BFS&DFS
//
//  Created by 송우진 on 3/4/24.
//

import Foundation

func DFS(graph: Graph, start: Int) -> [Int] {
    var visitedQueue: [Int] = []
    var needVisitQueue: [Int] = [start]
    
    while !needVisitQueue.isEmpty {
        let node: Int = needVisitQueue.removeLast()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitQueue += graph.adjacencyList[node] ?? []
    }
    
    return visitedQueue
}



