//: # functions, parameters, and errors
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/5)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

//writing functions
func printehelp() {
    let message = """
    Welcome to MyaApp!
    
    Run this app inside a directory of images and
    MyApp will realize them all into thumbnails
    """
    
    print(message)
}

//accepting parmeters
print("Hello, world!")
func square(number: Int) {
    print(number * number)
}
square(number: 8)

//Returning values
func  square(number: Int) -> Int {
let return number * number
}
let result = square(number: 8)
print(result)

//parameter labels
 func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Jack")

//Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(prson)!")
}
greet("Justin")
//default paramenters
func greet(_ person: String, nicely: Bool = true) {
           if nicely == true {
           print("Hello, \(person)!")
           }else {
           print("Oh no, it's \(person) ahain...")
           }
           }
greet("Selena")
greet("Selena", nicely: false)

//variadic functions
print("Haters", "gonna", "hate")
func square(number: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(number: 1, 2, 3, 4, 5)

//writing throwing functions
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
return true
}

//running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout parameters
func doubleInPlace(number: inout Int) {
    number *= 4
}

var myNum = 18
doubleInPlace(number: &myNum)
