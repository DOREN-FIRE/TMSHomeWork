//
//  HomeWork_4.swift
//  Lessons 1, 2
//
//  Created by Данила Витальевич on 7.12.23.
//

import Foundation


//Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
func optionalMultiplyBy2(optionalNumber: Optional<Decimal>) -> Optional<Decimal> {
    return optionalNumber == nil ? Optional.none : Optional.some(optionalNumber! * 2)
}
//var result = optionalMultiplyBy2(optionalNumber: 6)

//либо
//func optionalMultiplyBy2(optionalNumber: Decimal?) -> Decimal? {
//    return optionalNumber == nil ? nil : optionalNumber! * 2
//}
//var result = optionalMultiplyBy2(optionalNumber: 6)

//Использовать force unwrap для извлечения значения из опциональной переменной. 
//Затем добавьте условие, чтобы обработать случай, если значение равно nil.

func forceUnwrap(a: String?) -> String {
    return a == nil ? "" : a!
}

//Написать функцию, использующую оператор guard для проверки опционального значения. 
//Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
// 1
func multiplyBy5(_ value: Decimal?) -> Decimal {
  guard let number = value else {
    print("Пустое значение")
    return 0
  }
  return number * 5
}
// 2
func getGreetingForUser(_ name: String?) -> String {
  let greet = "Здравстуй", guest = "гость";
  guard let username = name else {
    print("Нет имени пользователя")
    return "\(greet), \(guest)!"
  }
  return "\(greet), \(username)!"
}
//3
func showPict(url: String?) -> String{
    guard let userImage = url else {
        print ("guestImage")
        return ("guestImage")
    }
    return userImage
}
//4
func musicAlbum(Album: String?) -> String {
    guard let musicPlayList = Album else {
        print ("Not found")
        return ("Not found")
    }
    return ("musicPlayList")
}

//Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. 
//Если преобразование возможно, верните число, если нет - nil
func stringToInt (str: String) -> Int? {
  let int = Int(str)
  guard let integer = int else {
    print("Не возможно преобразовать \(str) в целочисленное значение")
    return nil
  }
  return integer
}

//Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги

enum Book {
    case DorianGray
    case LoveInTimeOfHolera
    case HarryPotter
    case SwordlessSamurai
    case RichDadPoorDad
    case It
    case NordicWood

    func getDescription() -> String {
        switch self {
            case .DorianGray:
                return "Книга про портрет Дориана Грея"
            case .LoveInTimeOfHolera:
                return "Книга про любовь во время чумы"
            case .HarryPotter:
                return "Книга про мальчика, который выжил"
            case .SwordlessSamurai:
                return "Самурай без меча"
            case .RichDadPoorDad:
                return "Основы инвестирования и предпринимательства"
            case .It:
                return "Ужасный клоун"
            case .NordicWood:
                return "Японские извращения с милфами"
        }
        
    }
}
 
let book: Book = .HarryPotter
var result = book.getDescription()

//Создайте перечисление Clothes. 
//Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.

enum Clothes {
    case TShirt
    case Sweater
    case Trousers
    case Shortes

    func getDescription() -> String {
        switch self {
            case .TShirt:
                return "Майка"
            case .Sweater:
                return "Свитер"
            case .Trousers:
                return "Брюки"
            case .Shortes:
                return "Шорты"
        }
        
    }
}
 
let clothes: Clothes = .Trousers
var result2 = clothes.getDescription()
