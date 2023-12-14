
import Foundation

class Teacher {
    private var id: Int
    private var firstName: String
    private var lastName: String
    private var subjectsTaught: [Subject]
    private var studentsTaught: [Student]
    
    init(_ id: Int, _ firstName: String, _ lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    // Метод для добавления предмета, который ведет учитель
    func addSubject(_ subj: Subject) -> Teacher {
        let isSubjInList = subjectsTaught.contains(where: {$0.subjectName == subj.subjectName})
        if !isSubjInList {
            subjectsTaught.append(subj)
        }
        return self
    }

    // Метод для установки оценки ученику по определенному предмету
    func setGrade(_ student: Student, _ subject: Subject) -> Teacher {
        let hasStudent_ = hasStudent(student.getId())
        if hasStudent_ {
            print("Учитель поставил оценку:")
            print("\(getInfo()) \(student.getInfo()) \(subject.grade)\n")
            student.addSubject(subject, getInfo())
        }
        return self
    }
    
    private func hasStudent(_ studentId: Int) -> Bool {
        return studentsTaught.contains(where: { $0.getId() == studentId})
    }

    func assignStudent(_ student: Student) -> Teacher {
        // проверить, есть ли такой ученик в списке
        let studentAlreaddyAssigned = hasStudent(student.getId())
        
        if !studentAlreaddyAssigned {
        //  добавить ученика в список
            studentsTaught.append(student)
        }
        return self
    }

    // -----------------------
    // Метод для получения информации об учителе и предметах, которые он ведет
    func getInfo() -> String {
        let noSubjectsString = "Пока что ничего не преподает.\n",
            fullName = "\(firstName) \(lastName)"

        guard let subjects = getSubjectsNames() else {
            return "\(fullName). \(noSubjectsString)"
        }
        
        return "\(fullName), преподает: \(subjects).\n"
    }

    private func getSubjectsNames() -> Optional<String> {
        return subjectsTaught.count > 0
            ? subjectsTaught.map(getSubjectName).joined(separator: ", ")
            : nil
    }
    
}
// let mathTeacher = Teacher(1, "Татьяна", "Валерьевна").addSubject(Subject(subjectName: "Математика", grade: "A"))
// let info = mathTeacher.getInfo()
// print(info)

// let student1 = Student(1, "Иван", "Петров", 15).assignTeacher(mathTeacher)
// let studInfo = student1.getInfo()
// print(studInfo)

  
