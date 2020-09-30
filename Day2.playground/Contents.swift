//: # arrays, dictionaries, sets, and enums
//: [view tutorials](https://www.hackingwithswift.com/100/swiftui/2)
/*: - Note:
Remember to take the practice tests for each topic.
 \
\
Please [commit your work frequently](https://www.russellgordon.ca/cs/source-control/introduction/using-source-control.pdf) and document your progress once each day in [Spaces](http://ca.spacesedu.com).
 */
import Cocoa

var str = "Hello, playground"
//arrays
let bradley="Bladrey will simpson"
let connor="Connor Ball"
let tristan="Tristan Evans"
let james="James McVey"

let thevamps = [bradley,connor,tristan,james]
thevamps[2]

//sets
let colors=Set([red, green, blue])
let colors2=Set([red, green, blue, green, blue])

//tuples
var name=(first:"Selena", last:"Gomez")
name.0
name.first

//arrays vs sets vs tuples
//NOTE: If you need a specific, fixed collection of realated values where each item has a precise position or name, you should use tuple.
let adress=(house:678, street: "Apple Avenue", city:"Tokyo")
let set=Set(["addravark","astronaut","azalea"])
let pythons=(["Eric","Graham","John","Michael","Terry","Terry"])

//dictionaries
let age=[
    "Justin Bieber":26,
    "Shawn Mendes":22
]

age["Justin Bieber"]

//dictionary default values
let favoriteIceCream = [
"Hana":"Chocolate"
"Sophie":"Vanilla"
]
favoriteIceCream["Hana"]
favoriteIceCream["Max", default:"Unknown"]

//creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()
words = Set<String>()
numbers = Set<Int>()

scores = Dictionary<String, Int>()
results = Array<Int>()

//enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result{
    case success
    case failure
}

let result4 = Result.failure

//enum assocaited values
enum Activity{
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
//enum raw values
enum Planet: Int{
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawvalue: 2)


