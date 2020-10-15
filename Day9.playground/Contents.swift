//: # access control, static properties, and laziness
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/9)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//initializers
struct User {
    var username: String
}

var user = User(username: "twostraws")
struct User {
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "twostraws"

//referring to the current instance
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

lazy var familyTree = FamilyTree()
ed.familyTree

//static properties and methods
struct Student {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = nameStudent.classSize += 1
    }
}

print(Student.classSize)

//access control
struct Person {
    var id: String
    
    init(id: String) {
        self.id = id
    }
}

let ed = Person(id: "12345")

struct Person {
    private var id: String
    
    init(id: String) {
        self.id =id
    }
}

struct Person {
    private var id: String
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

//1.You can create your own types using structures, which can have their own properties and methods.
//2.You can use stored properties or use computed properties to calculate values on the fly.
//3.If you want to change a property inside a method, you must mark it as mutating.
//4.Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
//5.Use the self constant to refer to the current instance of a struct inside a method.
//6.The lazy keyword tells Swift to create properties only when they are first used.
//7.You can share properties and methods across all instances of a struct using the static keyword.
//8.Access control lets you restrict what code can use properties and methods.

