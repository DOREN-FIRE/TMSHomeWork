// MARK: - ДЗ
// Реализуйте методы в классе Student для
//      - добавления предметов,
//      - установки оценок и
//      - получения информации о студенте.
// Реализуйте методы в классе Teacher с
//      - указанием предметов,
//      - установки оценок и
//      - получения информации о студенте которому ставишь оценку.

// Создайте функции для изменения возраста и имени студента,
// используя соответствующие методы доступа.

// Создайте функции для изменения возраста и имени преподавателя и
//  его предмет который он преподаёт,
// используя соответствующие методы доступа.

// Итог: Создайте несколько экземпляров студентов, преподавателей.
// Добавьте студентам предметы и установите оценки.
// Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
// У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)

//  Создание учителя
// let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
// mathTeacher.addSubjectTaught(subjectName: "Math")

//  Создание студентов
// let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
// let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)

//  Связывание студентов с учителем
// student1.assignTeacher(teacher: mathTeacher)
// student2.assignTeacher(teacher: mathTeacher)

//  Учитель ставит оценки студентам по предметам
// mathTeacher.setGrade(for: student1, subjectName: "Math", grade: "A")
// mathTeacher.setGrade(for: student2, subjectName: "Math", grade: "B+")

import Foundation

//  Создание учителя
let mathTeacher = Teacher(1, "John", "Doe")
mathTeacher.addSubject(Subject(subjectName: "Math", grade: "A"))


//  Создание студентов
let student1 = Student(1, "Alice", "Simpson", 20)
let student2 = Student(2, "Bob", "Maguire", 21)

//  Связывание студентов с учителем
student1.assignTeacher(mathTeacher)
student2.assignTeacher( mathTeacher)

//  Учитель ставит оценки студентам по предметам
mathTeacher.setGrade(student1, Subject(subjectName: "Math", grade: "A"))
mathTeacher.setGrade(student2, Subject(subjectName: "Math", grade: "B+"))
