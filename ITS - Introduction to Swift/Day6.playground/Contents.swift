import UIKit

//closures = function as variable
var str = {
    print("Hello, playground")
}
str()

let driving = {
    print("Driving")
}

//accept params
let drivingWithParam = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingWithParam("London")

//return values
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("Paris")
print(message)

//closures as params
func travel(action: () -> Void) {
    print("Getting Ready")
    action()
    print("Arrived")
}
travel(action: driving)

//trailing closure syntax
travel() {
    print("I'm walking to my bike")
}
travel {
    print("I'm rowing in my canoe")
}
