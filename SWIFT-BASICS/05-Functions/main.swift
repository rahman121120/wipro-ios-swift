
import Foundation

func greet() {
    print("Welcome to Swift Programming!")
}

greet()

func greetUser(name: String) {
    print("Hello, \(name)!")
}

greetUser(name: "Rahman")

func add(a: Int, b: Int) -> Int {
    return a + b
}

let sum = add(a: 10, b: 20)
print("Addition:", sum)

func studentDetails(name: String, age: Int, grade: Character) {
    print("Name: \(name), Age: \(age), Grade: \(grade)")
}

studentDetails(name: "Rahman", age: 21, grade: "A")

func calculateDiscount(price: Double, discount: Double = 10) -> Double {
    return price - (price * discount / 100)
}

print("Discounted Price:", calculateDiscount(price: 1000))
print("Custom Discount:", calculateDiscount(price: 1000, discount: 20))

func introduce(person name: String) {
    print("My name is \(name)")
}

introduce(person: "Rahman")

func square(_ number: Int) -> Int {
    return number * number
}

print("Square:", square(5))

func calculate(a: Int, b: Int) -> (sum: Int, difference: Int) {
    return (a + b, a - b)
}

let result = calculate(a: 20, b: 10)
print("Sum:", result.sum)
print("Difference:", result.difference)

func increment(value: inout Int) {
    value += 1
}

var count = 5
increment(value: &count)
print("Incremented Value:", count)

func display(value: Int) {
    print("Integer:", value)
}

func display(value: String) {
    print("String:", value)
}

display(value: 100)
display(value: "Swift")
