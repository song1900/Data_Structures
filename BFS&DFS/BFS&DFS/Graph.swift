//
//  Graph.swift
//  BFS&DFS
//
//  Created by 송우진 on 3/2/24.
//

import Foundation

class Graph {
    var adjacencyList: [Int: [Int]] = [:]
    
    func addEdge(_ u: Int, _ v: Int) {
        if adjacencyList[u] == nil {
            adjacencyList[u] = [v]
        } else {
            adjacencyList[u]?.append(v)
        }
    }
}
