import UIKit

// Creating your own classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let poppy2 = Poodle(name: "Poppy2")
poppy2.breed
poppy2.name

// Overriding methods

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog2 {
    override func makeNoise() {
            print("Yip!")
}
}

let poppy3 = Poodle2()
poppy3.makeNoise()

// Final classes: notn allowed to inheretence

final class Dog3 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

// deinitializers

class Person5 {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person5 = Person5()
    person5.printGreeting()
}

// Mutability
class Singer3 {
    var name = "Taylor Swift"
}

let taylor = Singer3()
taylor.name = "Ed Sheeran"
print(taylor.name)

class Singer4 {
    let name = "Taylor Swift"
}
// use let to dischangeble
