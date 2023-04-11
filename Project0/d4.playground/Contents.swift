import UIKit

// for loop
let count = 1...10

for number in count {
    print("Number is \(number)")
}


let albums = ["One", "Two", "Three"]

for al in albums {
    print("My albums are \(al)")
}


print("Players gonna ")

for i in 1...5 {
    print("number \(i)")
}


// while loop

var number = 1

while number <= 20 {
    print(number)
    number += 1
}
print("Saklanmayan sobe!")


// repeat loop
var number1 = 1

repeat {
    print(number1)
    number1 += 1
} while number1 <= 20

print("Ready or not, here I come!")



repeat {
    print("This is false")
} while false


// breaking loop

var countDown = 10
while countDown >= 0 {
    print(countDown)
    countDown -= 1
    if countDown == 5 {
        print("I am bored! Skip this loop :0")
        break
    }
}


// breaking  multiple loops at the same time
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print(product)
        if product == 50 {
            break outerLoop
        }
    }
}


// skipping items in loop
for i in 1...20 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}


// infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}


