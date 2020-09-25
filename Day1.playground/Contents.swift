//: # variables, simple data types, and string interpolation
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/1)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
import Cocoa

// variables

var str = "Hello, playground"

str = "Goodbye"

str = "It's Thursday!"


// strings and integers

var age=28

age=8_000_000

//multi-line-string

var str1="""
This goes
over multiple lines
"""

var str2 = """
This goes\
over multiple\
lines
"""

//doubles and booleans
var pi=3.14

var awesome=true

var alsoAwesome = "false"

// NOTE: The next line won't work, because alsoAwesome is of type String
//alsoAwesome = true

//string interpolation
var score=67

str="Your score was \(score)"

var results="The test results are here; \(str)"

//constants
let Jsutin="Bieber"

//type annotations
//let str = "Hello, playground"

//this is called type inference
let album: String = "Reputation"

let year: Int = 1998

let height: Double = 1.64

let taylorRocks: Bool = true

