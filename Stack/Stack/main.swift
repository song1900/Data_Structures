//
//  main.swift
//  Stack
//
//  Created by 송우진 on 2/8/24.
//

import Foundation

struct Stack<T> {
    var stack: [T] = []
    
    var count: Int {
        return stack.count
    }
    
    var isEmpty: Bool {
        return stack.isEmpty
    }
    
    mutating func pop() -> T? {
        return stack.popLast()
    }
    
    mutating func push(_ element: T) {
        stack.append(element)
    }
    
    func top() -> T? {
        return stack.last
    }
}




var myStack = Stack<Int>()

for i in 0..<20 {
    myStack.push(i)
}

print(myStack.count)

print(myStack.top())

print(myStack.pop())
print(myStack.pop())

print(myStack.top())

print(myStack.count)
