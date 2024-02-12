//
//  LinkedList.swift
//  LinkedList
//
//  Created by 송우진 on 2/12/24.
//

import Foundation

struct LinkedList<T: Equatable> {
    var head: Node<T>?
    var tail: Node<T>?
    
    func showList() {
        var now = head
        print("===== Linked List =====")
        while now != nil {
            now?.next == nil ?
            print("id: \(now?.id) | data: \(now?.data)")
            : print("id: \(now?.id) | data: \(now?.data) ->")
            
            now = now?.next
        }
        print("=======================")
    }
    
    mutating func add(node: Node<T>) {
        guard head != nil else {
            head = node
            tail = node
            return
        }
        
        tail?.next = node
        tail = node
    }
    
    func searchNode(data: T) -> Node<T>? {
        var now = head
        while now?.data != data && now != nil {
            now = now?.next
        }
        return now
    }
    
    mutating func insert(node: Node<T>, after id: Int) {
        var now = head
        while now?.id != id && now?.next != nil {
            now = now?.next
        }
        
        node.next = now?.next
        now?.next = node
    }
    
    mutating func insert(node: Node<T>, before id: Int) {
        var now = head
        
        guard now?.id != id else {
            head = node
            node.next = now
            return
        }
        
        while now?.next?.id != id && now?.next != nil {
            now = now?.next
        }
        
        node.next = now?.next
        now?.next = node
    }
    
    mutating func delete(node: Node<T>) -> Bool {
        var now = head
        
        guard now !== node else {
            if head === tail { tail = nil }
            head = now?.next
            return true
        }
        
        while now?.next !== node && now?.next != nil {
            now = now?.next
        }
        
        guard now != nil else {
            return false
        }
        
        if now?.next === tail { tail = now }
        
        now?.next = now?.next?.next
        return true
    }
}
