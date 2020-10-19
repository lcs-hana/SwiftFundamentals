//: # classes and inheritance
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/10)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//creating own classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy =  Dog(name: "Poppy", breed: "Poodel")

//class inheritance
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
    
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
    
//overriding methods
class Dog {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle: Dog {
    }
let poppy = Poodle()
poppy.makeNoise()

class Poodle: Dog {
    override func makenoise() {
        print("Yip!")
    }
}

//Final Classes
final class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy =  singersingerCopy.name = "Justin Bieber"

print(singer.name)

struct Singer {
    var name = "Taylor Swift"
}

//Deinitializers
class Person {
    var name  = "Bradley Simpson"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

deinit {
    print("\(name) is no more!")
}

//Mutability
class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

class Singer {
    let name = "Taylor Swift"
}

//1.Classes and structs are similar, in that they can both let you create your own types with properties and methods.
//2.One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
//3.You can mark a class with the final keyword, which stops other classes from inheriting from it.
//4.Method overriding lets a child class replace a method in its parent class with a new implementation.
//5.When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
//6.Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
//7.Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
