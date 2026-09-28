//
//  main.swift
//  task1-generic-stack
//
//  Created by Erik Valencia Cardona on 28/09/26.
//

import Foundation


class Stack<T> {
    private var items:[T] = []
    
    func push(_ item: T){
        items.append(item)
    }
    
    func pop() -> T? {
        return items.popLast()
    }
    
    func size() -> Int {
        return items.count
    }
    
    func printStackContents() -> String {
        var text: String = ""
        
        for item in items {
            text.append("\n \(item)")
        }
        
        
        return text
    }
}

/// Test
let stack = Stack<Int>()

stack.push(10)
stack.push(20)
stack.push(30)
stack.push(50)

print(stack.printStackContents())
print("Size: \(stack.size())")
print("Popped: \(stack.pop() ?? 0)")
