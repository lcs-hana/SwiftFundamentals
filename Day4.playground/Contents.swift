//: # loops, loops, and more loops
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/4)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */

import Cocoa

var str = "Hello, playground"

//for loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
let album = ["Red","1989", "Reputation"]

for album in album {
    print("\(album) is on Apple Music")
}
print("Players gonna")
for _ in 1...5 {
    print("play")
}

//while loops
var number = 1
var number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//repeat loops
var numver = 1
repeat {
    print(number)
    number += 1
}while number <= 20

print("Ready  or not, here I come!")

//exiting loops
var countdown = 10
while countdown >= 0 {
    print(countdown)
    
    if countdown == 4 {
        print("I'mm bored. Let's go now!")
    break
        
    }
    countdown -= 1
}

//exiting multiple loops
outerloop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
        break outerloop
            
        }
    }
}

//skiiping items
for i in 1...10 {
    if i % 2 == 1{
        continue
    }
    
    print(i)
}

//infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273
    {
        break
    }
}
