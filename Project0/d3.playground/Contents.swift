import UIKit

let firstNum = 4
let secondNum = 6

let sum = firstNum + secondNum
let diff = secondNum - firstNum
let mult = firstNum * secondNum
let div = secondNum / firstNum
let remainder = 14 % firstNum


// operator overloading

let num3 = 14
let num4 = 42
let sum2 = num3 + num4

let fakers = "Fakers gonna "
let fake = "fake"
let result = fakers + fake

let list1 = ["FB", "GS"]
let list2 = ["BJK", "TS"]
let biggers = list1  + list2

// compound of operators

var score = 100
score -= 10

var quote = "Bir elin nesi var iki elin "
quote += "sesi var"

// Comparison operators
firstNum == secondNum
firstNum != secondNum
firstNum < secondNum

fakers == fakers

// conditions

var rule1 = "11"
var rule2 = "18"

if rule1 > rule2 {
    print("rule1 is greater than rule2")
} else if rule1 == rule2 {
    print("rule2 is equals to rule2")
} else {
    print("rule1 is lower than rule2")
}

// Combining conditions

var age1 = 21
var age2 = 19

if age1 < 25 || age2 < 25 {
    print("one of the ages are lower than 25")
}


if age1 < 25 && age2 < 25 {
    print("all ages are lower than 25")
}

// ternary operator:  it checks a condition specified in the first value, and if it’s true returns the second value, but if it’s false returns the third value.

let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


// Switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// Switch statements with always default last when fallthrough happens
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


// Range operators
let examScore = 40
switch examScore{
case ..<50:
    print("You failed")
case 50..<85:
    print("You did OK")
default:
    print("You did great!")
}
