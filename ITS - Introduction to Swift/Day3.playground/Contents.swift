import UIKit

var str = "Hello, playground"

//DAY 3
//operators
let score1 = 12
let score2 = 4

let sum = score1 + score2
let diff = score1 - score2
let prod = score1 * score2
let quo = score1 / score2
let mod = score1 % score2 //try number.isMultiple(of: n)

//operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake fake fake fake fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//shorthand
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//comparison
let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Tayloq" //also strings

//conditionals
var firstCard = 1
var secondCard = 1

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 { //and
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 { //or
    print("At least one is over 18")
}

if (age1 > 18 && age2 > 18) || (age1 > 18 || age2 > 18) { //multiple, use parentheses
    print("You can delete this post")
}

//ternary operators
firstCard = 11
secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

//switch case

let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//range operators
score = 50

switch score {
case 0..<50: //50 exclusive
    print("You failed badly.")
case 50:
    print("50.")
    fallthrough
case 50..<85: //85 exclusive
    print("You did OK.")
default:
    print("You did great!")
}
