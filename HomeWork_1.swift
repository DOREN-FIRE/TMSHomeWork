//
//  HomeWork_1.swift
//  Lessons 1, 2
//
//  Created by Данила Витальевич on 6.12.23.
//

import Foundation



// Переменные
var first = 2.5
var second = 9.7
var third = 6.9
var forth = 8.2

// сумма отдельно целых частей чисел
var firstInt = Int (first)
var secondInt = Int (second)
var thirdInt = Int(third)
var forthInt = Int (forth)

func CalcSumOfIntNumbers(numbers: Array<Int>) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
var sumOfIntNumbers = CalcSumOfIntNumbers(numbers: [firstInt, secondInt, thirdInt, forthInt])

// сумма отдельно дробных частей чисел
var firstFraction = first - Double(firstInt)
var secondFraction = second - Double (secondInt)
var thirdFraction = third - Double(thirdInt)
var forthFraction = forth - Double(forthInt)

func CalcSumOfFractionalNumbers(numbers: Array<Double>) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    return sum
}
var sumOfFractionalNumbers = CalcSumOfFractionalNumbers(numbers: [firstFraction, secondFraction, thirdFraction, forthFraction])

////проверка является ли число четным для целых чисел
//if sumOfIntNumbers % 2 == 0 {
//print (String(sumOfIntNumbers) + " - это четное число")
//} else {
//    print (String (sumOfIntNumbers) + " - это нечетное число")
//
//    // проверка является ли число четным для дробных чисел
//    var checkingFractions = (sumOfFractions).truncatingRemainder(dividingBy: (2.0)) == 0
//    if checkingFractions == true {
//        print (String(Float(sumOfFractions)) + "- это четное число")
//    } else {
//        print (String(Float(sumOfFractions)) + " - это нечетное число")
//    }
//
//}
