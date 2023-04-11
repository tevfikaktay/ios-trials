import UIKit

// first function
func printHelp() {
    let message = """
    Welcome to my app!
    Here is the my helper doc to introduce you gladly :)
    """
    print(message)
}


printHelp()

// accepting args to function

func calcSquare(number:Int) {
    let result = number * number
    print(result)
}

calcSquare(number: 5)


// returning values from function

func calcSquare2(number:Int) -> Int {
    let result = number * number
    print(result)
    return result
}

let result = calcSquare2(number: 5)

// parameter labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

// omitting parameters
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

// default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Tevfik", nicely: false)


// variadic functions
func square(numbers: Int...) {
    for num in numbers {
        print("\(num) squared is \(num * num)")
    }
}

square(numbers: 1,2,3,4,5,6,7)

//writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}


// Running throwing functions
do {
    try checkPassword("password")
    print("that is a good password!")
} catch {
    print("you cant use this password!")
}

//inout parameters (changing given args value
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
print(myNum)
doubleInPlace(number: &myNum)
print(myNum)
