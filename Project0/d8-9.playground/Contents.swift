import UIKit

// Creating your own structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)


tennis.name = "Lawn Tennis"
print(tennis.name)

// Computed properties
struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var OlympicSport: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport."
        } else {
            return "\(name) is not an Olympic sport."
        }
    }
}

let chess = Sport2(name: "Chess", isOlympicSport: false)
print(chess.OlympicSport)

// Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete.")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 65
progress.amount = 100

// Methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

// Mutating methods
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
        print(name)
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()


// Properties and methods of strings
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


// Properties and methods of arrays
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)


struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user and its name \(username)")
    }
}

// Initializers
var user1 = User()
user1.username

var user2 = User()
user2.username = "Eliah"
print(user2.username)

// Referring to the current instance
struct Person2 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var user3 = Person2(name: "Jo")


// Lazy properties


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person4 {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person4(name: "Ed")

// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

// Access control
struct Person5 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let edy = Person5(id: "12345")
edy.identify()
