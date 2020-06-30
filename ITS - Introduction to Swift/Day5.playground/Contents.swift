import UIKit

var str = "Hello, playground"

//DAY 5 - FUNCTIONS

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails

"""

    print(message)
}

printHelp()

//passing params
func square(number: Int) {
    print(number * number)
}
square(number: 8)

//returning values
func squared(number: Int) -> Int {
    return number * number
}
print(squared(number: 8))

//parameter labels
func sayHello(to name: String) { //to is external, name is internal
    print("Hello, \(name)!")
}
sayHello(to: "Taylor") //increases readability?

//omitting param labels
func greet(_ person: String){
    print("Hello, \(person)!")
}
greet("Taylor!")

//default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Taylor")
greet("Kanye", nicely: false)

//variadic - n number of same type params, pass as array
print("Haters", "gonna", "hate")

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

//throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout params - param changes reflect outside of function
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
print(myNum)
doubleInPlace(number: &myNum)
print(myNum)
