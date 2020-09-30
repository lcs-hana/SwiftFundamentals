//: # operators and conditions
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/3)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//arthmetic operators
let firstscore = 8
let secondscore = 9
let total = firstscore + secondscore
let difference = firstscore - secondscore

let product = firstscore * secondscore
let devided = firstscore / secondscore

//operator overloading
let meaningoflife = 54
let doublemeaning = 54 + 54
let fakers = "Fakers gonna"
let action = fakers + "fake"
let firsthalf = ["Paul", "Max"]
let secondhalf = ["john", "Helen"]
let friends = firsthalf + secondhalf

//compound assignment operators
var score = 97
score -= 3
var quote = "The rain in Spain falls mainly on the"
quote += "Spanidards"

//conditions
let firstcard = 5
let secondcard = 34

if firstcard + secondcard == 2 {
    print("Aces - lucky!")
} else if firstcard + secondcard == 39 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//the ternary operator
let firstcard = 1
let secondcard = 17
print(firstcard == secondcard ? "Cards are the same" : "Cards are different")

if firstcard == secondcard {
    print("Cards are same")
} else {
    print("Cards are different")
}

//switch statement
let weather = "cloudy"
switch weather {
case "sunny":
    print("put an sunglasses")
case"rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
    fallthrough
default:
    print("Enjoy your day!")
}

//range operation
let score = 78

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}


