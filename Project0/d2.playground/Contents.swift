import UIKit

// arrays
let animal1 = "dog"
let animal2 = "cat"
let animal3 = "rabbit"
let animal4 = "bird"

let animals_arr = [animal1, animal2, animal3, animal4]

animals_arr[0]


// sets
let isimler1 = Set(["zeki", "ali", "veli"])
// sıralar

let isimler2 = Set(["zeki", "ali", "veli", "zeki", "veli"])
// aynıları siler


//tuples
// eleman eklenemez sabittirler. sıra ve ad ile çağrılabilirler. type değiştirtmez, olmayan şeyi sorgulatmaz.

var my_tuple = (first: "tevfik", last: "aktay")
my_tuple.1
my_tuple.last


// tuple, set, array

let address = (house: 333, street: "malazgirto")
let unique = Set(["kanuni", "sultan", "suleyman"])
let oylesine = ["ben", "varya", "ben", "çiftler"]


// dictionary
let my_dict = ["taylor": 1.90, "steve": 1.87, "mack": 1.79]
my_dict["taylor"]

let icecream = ["cream1": "orange",
                "cream2": "kiwi",
                "cream3": "banana",]

icecream["cream1"]

icecream["cream5"]

icecream["cream5", default: "Unknown"]

// creating empty collections
var teams = [String: String]()
teams["ali"] = "developer"
var teams2 = Dictionary<String,String>()
teams["veli"] = "developer2"
var scores = Array<String>()
var numbers = Set<Int>()
var letters = Set<String>()

// enumeration
// This stops you from accidentally using different strings each time.
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

//As well as storing a simple value, enums can also store associated values attached to each case. This lets you attach additional information to your enums so they can represent more nuanced data.//

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
