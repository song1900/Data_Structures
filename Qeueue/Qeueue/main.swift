//
//  main.swift
//  Queue
//
//  Created by 송우진 on 2/7/24.
//

import Foundation

struct Queue<T> {
    private var queue: [T?] = []
    private var head: Int = 0
    
    public var count: Int {
        return queue.count - head
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard head < queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > 50 {
            queue.removeFirst(head)
        }
        return element
    }
}

var myQueue = Queue<Int>()
myQueue.enqueue(99)
myQueue.enqueue(10)
myQueue.enqueue(9)
myQueue.enqueue(41)
myQueue.enqueue(800)

print(myQueue.count)
print(myQueue.dequeue())
print(myQueue.dequeue())
print(myQueue.count)
