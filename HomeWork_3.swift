//
//  HomeWork_3.swift
//  Lessons 1, 2
//
//  Created by Данила Витальевич on 6.12.23.
//

import Foundation

//Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций)
func calcNumbers(summand1: Decimal, summand2: Decimal) -> Decimal {
    return summand1 + summand2
}
func calcNumbers(diminutive: Decimal, deductible: Decimal) -> Decimal {
    return diminutive - deductible
}
func calcNumbers(multiplier1: Decimal, multiplier2: Decimal) -> Decimal {
    return multiplier1 * multiplier2
}
func calcNumbers(divisible: Decimal, divider: Decimal) -> Decimal {
    return divisible / divider
}
//var result = calcNumbers(divisible: 7, divider: 3)

//Сумма цифр четырехзначного числа
func digitSum(number: Int) -> Int {
    var b = number, sum = 0
    while b>0 {
        sum += b % 10
        print(sum)
        b /= 10
        print(b)
    }
    print(sum)
    return sum
}
var a = digitSum(number: 3547)

//Функция сравнения строк - "авб" больше "ввш"
var firstString = "абв", secondString = "ввш"
func compareStrings(firstString: String, secondString: String) -> String {
    if firstString == secondString{
        print("Они равны")
        return firstString
    }
    else if firstString > secondString {
        print(firstString + " больше чем " + secondString)
        return firstString
    }
    else {
        print(secondString + " больше чем " + firstString)
        return secondString
    }
}
var comparedStrings: String = compareStrings(firstString: firstString, secondString: secondString)

//Циклический вызов функций - поломать приложение
//1-й вариант
func brokeApp1(number: Int) -> Int {
        return number + brokeApp1(number: number - 1)
}
//var brokenApp1 = brokeApp1(number: 5)
//2-й вариант
func brokeApp2() -> Void {
    while true {
        print ("Processing...")
    }
}
//var brokenApp2: Void = brokeApp2()

//Функция возведения в степень с дефолтным параметром
func powerByNumber(baseNumber: Decimal, powerNumber: Int = 1) -> Decimal {
    return pow(baseNumber, powerNumber)
}

var tupleArray: Array<(Decimal, String)> = [(1, "x"), (4, "y"), (6, "a"), (9, "u"), (5, "k")]

