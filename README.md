# Generic Stack — Swift

A simple and reusable **generic Stack implementation in Swift**, developed as part of my Swift learning exercises.

The project demonstrates how to build a type-safe data structure using **Generics**, while applying basic Swift concepts such as encapsulation, optionals, arrays, and the **LIFO (Last In, First Out)** principle.

## 📌 Features

* Generic `Stack<T>` class that supports any data type.
* `push(_:)` to add elements to the stack.
* `pop() -> T?` to remove and return the top element.
* `size() -> Int` to get the number of elements.
* `printStackContents() -> String` to display the stack contents.
* Uses `private` properties to encapsulate the internal data.
* Safely handles empty stacks through Swift Optionals.

## 🏗️ Implementation

The stack internally uses a Swift `Array`:

```swift
class Stack<T> {
    private var items: [T] = []

    func push(_ item: T) {
        items.append(item)
    }

    func pop() -> T? {
        return items.popLast()
    }

    func size() -> Int {
        return items.count
    }

    func printStackContents() -> String {
        var text = ""

        for item in items {
            text.append("\n \(item)")
        }

        return text
    }
}
```

## 🧪 Example

```swift
let stack = Stack<Int>()

stack.push(10)
stack.push(20)
stack.push(30)
stack.push(50)

print(stack.printStackContents())
print("Size: \(stack.size())")

if let popped = stack.pop() {
    print("Popped: \(popped)")
}
```

### Expected Output

```text
10
20
30
50
Size: 4
Popped: 50
```

The last inserted element (`50`) is the first one removed, demonstrating the **LIFO** behavior of a stack.

## 🔄 Generic Usage

Because the class uses Swift Generics, the same implementation can work with different data types:

```swift
let numbers = Stack<Int>()
numbers.push(10)

let names = Stack<String>()
names.push("Erik")

let values = Stack<Double>()
values.push(3.14)
```

This provides **type safety at compile time** without requiring multiple implementations for different types.

## 🧠 Concepts Demonstrated

* **Swift Generics**
* **Object-Oriented Programming**
* **Encapsulation**
* **Arrays and collections**
* **Optionals**
* **Methods and access control**
* **LIFO data structures**
* **Type safety**

## 🛠️ Technologies

* **Swift**
* **Xcode**
* **Foundation**

## 📂 Project Structure

```text
task1-generic-stack/
└── main.swift
```

## 👨‍💻 Author

**Erik Valencia Cardona**

Systems / Computer Engineering Student
Interested in **iOS Development, Swift, Full Stack Development, and Software Engineering**.
