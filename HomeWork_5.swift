//
//  HomeWork_5.swift
//  Lessons 1, 2
//
//  Created by Данила Витальевич on 12.12.23.
//

import Foundation

//Функция вычисления факториала числа - через передачу массива в параметр функции.
//Массив из 6 чисел -> Факториал числа \(numbers), равен?

// Правильный факториал
func getFact(_ n: Int) -> Int {

    return n > 1
        ? n * getFact(n - 1) // n * (n-1)!     5! = 5 * 4!
        : n
}

let b = getFact(7)

// Перемножение элементов массива
func multArr(_ arr: Array<Int>) -> Optional<Int> {
    var result = 1
    if arr.count == 0 {
        return Optional.none
    }
    for number in arr {
        result *= number
    }
    return Optional.some(result)
}

let arr: Array<Int> = [1, 2, 3, 4, 5, 6, 7]
let multipliedArr = multArr(arr)

//var x = [(1, "x"), (4, "y"), (6, «a»), (9, «u»), (5, «k»)]
//Массив из кортежей - возвести Int в квадрат
//отфильтровать только четные Int -> [4, 6]
//упорядочить по строкам по возрастанию -> [a, k, u, x, y]

// Массив из кортежей
let x: Array<(Int, String)> = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k"), (14, "e")]

// возвести Int в квадрат
func squareNumber(_ t: (Int, String)) -> (Int, String) {
    return (t.0 * t.0, t.1)
}
// let squaredTuples = x.map(squareNumber)
// print(squaredTuples)


// отфильтровать только четные Int -> [4, 6]
func filterOddNumbers(_ t: (Int, String)) -> Bool {
    return t.0 % 2 == 0
}
// let evenTuples = x.filter(filterOddNumbers)
// print(evenTuples)

// упорядочить по строкам по возрастанию -> [a, k, u, x, y]
func sortStrings(_ leftEl: (Int, String), _ rightEl: (Int, String)) -> Bool {
    return leftEl.1 < rightEl.1
}
// let sortedStrings = x.sorted(by: sortStrings)
// print(sortedStrings)


let allTogether = x
    .map(squareNumber)
    .filter(filterOddNumbers)
    .sorted(by: sortStrings)

// print("\nAllTogether: \(allTogether)")
