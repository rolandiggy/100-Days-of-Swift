import UIKit

var str = "Hello, playground"


//DAY 2
//array - ordered, duplicates

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

var beatles: [String] = [john, paul, george, ringo]
let favBeatle: String = "my favorite beatle is \(beatles[2])"

//set - random, unique
let colorSet = Set(["red", "green", "blue"])

//tuple - fixed sze, same type as init
let queen = (first: "Taylor", last: "Swift", date: 1989)
queen.0
queen.date

//dictionary
let heights: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["John Mayer", default: 0.0] //returns nil if default not set

var emptyDict = [Int: String]()
emptyDict[1] = "yo"

var emptyAry = [String]()
var emptySet = Set<String>()

//enums - constant with predefined values
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

enum Activity {
    case bored
    //associated values, description
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")

//Raw Value enums -- index
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 3)
