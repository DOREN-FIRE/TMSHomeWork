
import Foundation

class Student {
    private var id: Int
    private var name: String
    private var lastName: String
    private var age: Int
    private var subjects: [Subject]
    private var teacher: Teacher?
    // Если несколько предметов, то учителей тоже должно быть несколько
    
    init(_ id: Int, _ name: String, _ lastName: String, _ age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
    }
    
    // Метод для добавления предмета
    func addSubject(_ subject: Subject, _ teacherInfo: String) -> Student {
        // добавить предмет
        subjects.append(subject)

        return self
    }

    // Метод для установки возраста студента
    func setAge(_ age: Int) -> Student {
        // установить возраст
        self.age = age
        return self
    }

    // Метод для установки имени студента
    func setName(_ name: String) -> Student {
        // установить имя
        self.name = name
        return self
    }

    // Метод для связывания студента с учителем
    func assignTeacher(_ teacher: Teacher) -> Student {
        // установить учителья
        teacher.assignStudent(self)
        self.teacher = teacher
        return self
    }
    
    // Метод для получения информации о студенте и его предметах   
    func getInfo() -> String {
        guard let teacherR = teacher else {
            return "Ученик \(name) \(lastName). Без учителя.\n"
        } 
        return "Ученик \(name) \(lastName).\nУчитель: \(teacherR.getInfo())\n"
    }

    func getId() -> Int {
        return id
    }
}

func getSubjectName(_ subject: Subject) -> String {
    return subject.subjectName
}
