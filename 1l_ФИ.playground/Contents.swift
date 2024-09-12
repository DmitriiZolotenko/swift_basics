//: A Cocoa based Playground to present user interface

import Foundation

//1. Решить квадратное уравнение. ax^2 + bx + c = 0

let a: Double = 10
let b: Double = 40
let c: Double = 6

var x1: Double = 0
var x2: Double = 0
var D: Double = 0



D = b * b - 4 * a * c

if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Корней нет")
}

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

var sideA: Double = 4
var sideB: Double = 4

// Хотел добавить проверку значений катетов, что если 0 или меньше, то фигура не является треугольником, но xcode поругался что Double нельзя использовать
// вот так делал if sideA || sideB < 1

let S: Double = sideA * sideB / 2
let sideC: Double = sqrt(sideA * sideA + sideB * sideB)
let P: Double = sideA + sideB + sideC
print("Площадь прямоугольного треугольника равна: \(S), переметр равен: \(P), гипотенуза равна: \(sideC)")



//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

var deposit: Double = 5000
var percentPerYear: Double = 5
var summ: Double = 0

for year in 1...5 {
    summ = deposit + (deposit / 100 * percentPerYear)
    if year == 5 {
        print("Сумма вклада за 5 лет равна: \(summ) ")
    }
}
//так не получается, думал что цикл может сохранять значение в переменную(((
