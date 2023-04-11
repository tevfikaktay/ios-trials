import UIKit

// Creating basic closures


let driving = {
    print("I am a fast driver")
}
driving()

// Accepting parameters in a closure

let driving2 = {(from: String, to: String) in
    print("I am driving from \(from) to \(to)")
}

driving2("London","Paris")

// Returning values from a closure

let driving3 =  {(from: String, to: String) -> String in
    return "I am driving from \(from) to \(to)"
}

let message = driving3("Istanbul","Ankara")
print(message)

// Closures as parameters
// we would specify the parameter type as () -> Void. That means “accepts no parameters, and returns Void
let driving4 = {
    print("I am a fast driver")
}

func travel(action: () -> Void) {
    print("I am getting ready to go!")
    action()
    print("I am arrived.")
}

travel(action: driving4)

// Trailing closure syntax
func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel2() {
    print("I'm driving in my car")
}


// Using closures as parameters when they accept parameters
func travel3(action: (String) -> Void) {
    print("Im getting ready to go")
    action("London")
    print("Im arrived")
}

travel3 { (place: String) in
    print("I am going to \(place) in my car!")
}


// another format of previous one
let driving5 = {(to: String) in
    print("I am driving to \(to)")
}

func travel4(action: (String) -> Void) {
    print("Im getting ready to go")
    action("London")
    print("Im arrived")
}

travel4(action: driving5)


// Using closures as parameters when they return values

func travel6(action: (String) -> String) {
    print("I am getting ready to go.")
    let description = action("Yozgat")
    print(description)
    print("I am arrived!")
}

travel6 {(place: String) -> String in
    return "I am going to \(place) in my car."
}

// another format of previous one

func travel7(city: String, action: (String) -> String) {
    print("I am getting ready to go.")
    let description = action(city)
    print(description)
    print("I am arrived!")
}

let driving6 = {(place: String) -> String in
    return "I am going to \(place) in my car."
}

travel7(city: "Çankırı", action: driving6)

// Shorthand parameter names
func travel8(action: (String) -> String) {
    print("I am getting ready to go.")
    let description = action("Çorum")
    print(description)
    print("I am arrived!")
}

travel8 { place in
        " I am driving to the \(place)"
}

// Closures with multiple parameters
func travel9(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel9 {
    "I'm going to \($0) at \($1) miles per hour."
}

// another way to write it
let driving9 = {(city: String, kms: Int) -> String in
    return "I'm going to \(city) at \(kms) miles per hour."
}

travel9(action: driving9)

// Returning closures from functions
func travel10() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel10()
result("London")

let result2 = travel10()("London")


// Capturing values
func travel11() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result3 = travel11()
result3("London")
result3("London")
result3("London")
