//: # closures part two
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/7)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//using closured as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//using closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//shorthand parameter names
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
let description = action("London")
    print(description)
    print("I arrived!")
}

travel {
     "I'm going to \($0) in my car"
}

//closures with muluple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles hour."
}

//returning closures from functions
func travel() ->(String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

let result2 = travel()("London")

//capturing values
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

func travel() -> (String) -> Void {
    var counter = 1
    
    result {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

result("London")
result("London")
result("London")

//1.You can assign closures to variables, then call them later on.
//2.Closures can accept parameters and return values, like regular functions.
//3.You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//4.If the last parameter to your function is a closure, you can use trailing closure syntax.
//5.Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
//6.If you use external values inside your closures, they will be captured so the closure can refer to them later.
