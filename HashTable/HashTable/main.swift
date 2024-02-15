//
//  main.swift
//  HashTable
//
//  Created by 송우진 on 2/15/24.
//

import Foundation

var hashTable: [String?] = .init(repeating: nil, count: 3)

func hash(key: Int) -> Int {
    return key % 3
}

func updateValue(_ value: String, forKey key: String) {
    guard let key = UnicodeScalar(key)?.value else { return }
    let hashAddress = hash(key: Int(key))
    hashTable[hashAddress] = value
}

func value(forKey key: String) -> String? {
    guard let key = UnicodeScalar(key)?.value else { return nil }
    let hashAddress = hash(key: Int(key))
    return hashTable[hashAddress]
}


updateValue("red", forKey: "빨")
updateValue("yellow", forKey: "노")
updateValue("blue", forKey: "파")


print(value(forKey: "빨"))
print(value(forKey: "노"))
print(value(forKey: "파"))
