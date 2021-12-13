import Foundation

struct Queue<T> {

    private var column = [T]()

    mutating func pushToQueue(_ item: T) {
        column.append(item)
    }

    mutating func popFirst() -> T? {
        guard column.count > 0 else { return nil }
        return column.removeFirst()
    }
}

var numbersArray = Queue<Int>()
numbersArray.pushToQueue(4)
numbersArray.pushToQueue(2)
numbersArray.pushToQueue(3)
numbersArray.pushToQueue(8)
numbersArray.popFirst()
print(numbersArray)

var stringArray = Queue<String>()
stringArray.pushToQueue("One")
stringArray.pushToQueue("Two")
stringArray.pushToQueue("Three")
stringArray.pushToQueue("Four")
stringArray.popFirst()
print(stringArray)

extension Queue {

    mutating func filter(_ closure: (T) -> Bool) {
        column = column.filter(closure)
    }

    mutating func sort(_ closure: (T, T) -> Bool) {
        column.sorted(by: closure)
    }

}

numbersArray.sort() { $0 > $1 }
print(numbersArray)

numbersArray.filter() { $0 % 2 == 0 }
print(numbersArray)

stringArray.sort() { $0.lowercased() < $1.lowercased() }
print(stringArray)

stringArray.filter() { $0 != "Two" }
print(stringArray)

extension Queue {

    subscript(index: Int) -> T? {
        guard index < column.count, index >= 0 else { return nil }
        return column[index]
    }

}
numbersArray[1]
stringArray[3]
