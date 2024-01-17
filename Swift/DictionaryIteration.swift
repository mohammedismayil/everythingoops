struct Student{
    var name:String
    var age:Int
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
}
let totalStudents = [Student(name: "john", age: 20),Student(name: "wick", age: 19),Student(name: "peter", age: 22),Student(name: "michael", age: 33),Student(name: "cena", age: 35),Student(name: "helen", age: 55)]

let eligibleStudents = ["john","helen","peter"]

//find ages of eligible students from totalStudents

let agesOfEligbleStudents = totalStudents.filter({eligibleStudents.contains($0.name)}).map({$0.age})
// print(agesOfEligbleStudents)


var totalStudentsDictionary: [String: Student]
for i in 0..<totalStudents.count {
    totalStudentsDictionary[totalStudents[i].name] = totalStudents[i]
}

var eligibleStudentsUsingDictionary: String = []
for j in 0..<eligibleStudents.count {
    if totalStudentsDictionary[eligibleStudents[j]] != nil {
       eligibleStudentsUsingDictionary.append(totalStudentsDictionary[eligibleStudents[i]]?.age)
    }
}
print(eligibleStudentsUsingDictionary)
//