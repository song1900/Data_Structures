//
//  main.swift
//  BFS&DFS
//
//  Created by 송우진 on 3/2/24.
//

import Foundation

print("Hello, World!")

let graph = Graph()
graph.addEdge(1, 2)
graph.addEdge(1, 3)
graph.addEdge(1, 8)
graph.addEdge(2, 1)
graph.addEdge(2, 7)
graph.addEdge(3, 1)
graph.addEdge(3, 4)
graph.addEdge(3, 5)
graph.addEdge(4, 3)
graph.addEdge(4, 5)
graph.addEdge(5, 3)
graph.addEdge(5, 4)
graph.addEdge(6, 7)
graph.addEdge(7, 2)
graph.addEdge(7, 6)
graph.addEdge(7, 8)
graph.addEdge(8, 1)
graph.addEdge(8, 7)
print(graph.adjacencyList)


let startNode = 1

print("===== BFS =====")
let result = BFS(graph: graph, start: startNode)
print("\(startNode): \(result)")


print("===== DFS =====")
let dfsResult = DFS(graph: graph, start: startNode)
print("\(startNode): \(dfsResult)")
