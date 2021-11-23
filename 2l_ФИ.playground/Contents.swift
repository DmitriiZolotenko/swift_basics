//: A Cocoa based Playground to present user interface
import Foundation
import AppKit

//1. Написать функцию, которая определяет, четное число или нет.

func evenNumber(number: Int) {
    number % 2 == 0 ? print("Число \(number) четное") : print("Число \(number) нечетное")
}

evenNumber(number: 51)
evenNumber(number: 12)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func divisibleNumber(number: Int) {
    number % 3 == 0 ? print("Число \(number) делится на 3 без остатка") : print("Число \(number) делится на 3 с остатком")
}

divisibleNumber(number: 332)

//3. Создать возрастающий массив из 100 чисел.

var arrayNumbers = [Int](1...100)

arrayNumbers

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for (_ , value) in arrayNumbers.enumerated() {

    if value % 2 == 0 {
        arrayNumbers.remove(at: arrayNumbers.firstIndex(of: value)!)
    } else if value % 3 == 0 {
        arrayNumbers.remove(at: arrayNumbers.firstIndex(of: value)!)
    }
}

arrayNumbers

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
//
//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

func fibonacci(n: Int) -> Int {

    var num1 = 0
    var num2 = 1

    for _ in 0 ..< n {

        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    return num2
}

var fibonacciArray = [Int]()

for i in 1...50 {
    fibonacciArray.append(fibonacci(n: i))
}

fibonacciArray

//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//
//    a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//    b. Пусть переменная p изначально равна двум — первому простому числу.
//    c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
//    d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//    e. Повторять шаги c и d, пока возможно.


//Запутался, не получилось
var intArray = [Int](2...101)
var p = intArray[0]

func deleteNumFunc(number: Int) -> Int {
    let deleteNum = 2 + number
    return deleteNum
}

for _ in intArray.enumerated() {

    let num = deleteNumFunc(number: p)
    intArray.remove(at: intArray.firstIndex(of: num)!)
}
