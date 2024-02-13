//
//  DoublyLinkedList.swift
//  DoublyLinkedList
//
//  Created by 송우진 on 2/13/24.
//

import Foundation

struct DoublyLinkedList<T: Equatable> {
    var head: Node<T>?
    var tail: Node<T>?
    
    var front: Node<T>? {
        return head
    }
    
    var back: Node<T>? {
        return tail
    }
    
    mutating func add(node: Node<T>) {
        guard head != nil else {
            head = node
            tail = node
            return
        }
        
        tail?.next = node
        node.prev = tail
        tail = node
    }
    
    mutating func search(data: T) -> Node<T>? {
        var now = head
        while now?.data != data && now !== tail {
            now = now?.next
        }
        return now
    }
    
    mutating func insert(node: Node<T>, after id: Int) {
        guard head != nil else { return }
        var now = head
        if id == tail?.id {
            self.add(node: node)
        }
        
        while now?.id != id && now != nil {
            now = now?.next
        }
        
        if now === tail {
            tail = node
        }
        
        node.next = now?.next
        now?.next?.prev = node
        now?.next = node
        node.prev = now
    }
    
    mutating func insert(node: Node<T>, before id: Int){
        guard head != nil else { return }
        var now = head
        
        if id == tail?.id {
            now = tail
        } else {
            while now?.id != id && now != nil {
                now = now?.next
            }
        }
        
        if now === head {
            head = node
        }
        
        now?.prev?.next = node
        node.prev = now?.prev
        now?.prev = node
        node.next = now
    }
    
    mutating func delete(id: Int) -> Node<T>? {
        var now = head
        
        if id == tail?.id {
            now = tail
        } else {
            while now?.id != id && now != nil {
                now = now?.next
            }
        }
        
        let deleted = now
        deleted?.next?.prev = deleted?.prev
        deleted?.prev?.next = deleted?.next
        
        if deleted === head {
            head = deleted?.next
        }
        if deleted === tail {
            tail = deleted?.prev
        }
        
        return deleted
    }
    
    
    func showAll() {
        var now = head
        print("===== Linked List ======")
        while now != nil {
            now?.next == nil
            ? print("id: \(now!.id) | data: \(now!.data)")
            : print("id: \(now!.id) | data: \(now!.data) -> ")
            now = now?.next
        }
        print("========================")
    }
}
