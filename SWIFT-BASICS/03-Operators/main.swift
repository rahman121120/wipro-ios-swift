
import Foundation

let a = 20
let b = 10


print("Addition:", a + b)
print("Subtraction:", a - b)
print("Multiplication:", a * b)
print("Division:", a / b)
print("Remainder:", a % b)

print("Equal:", a == b)
print("Not Equal:", a != b)
print("Greater Than:", a > b)
print("Less Than:", a < b)


let isStudent = true
let hasID = true

print("AND:", isStudent && hasID)
print("OR:", isStudent || hasID)
print("NOT:", !isStudent)


var score = 50
score += 10
print("Updated Score:", score)


for number in 1...5 {
    print("Closed Range:", number)
}

for number in 1..<5 {
    print("Half-Open Range:", number)
}

let age = 21
let eligibility = age >= 18 ? "Eligible" : "Not Eligible"
print("Voting:", eligibility)

let username: String? = nil
let displayName = username ?? "Guest"
print("Username:", displayName)

let value: Any = "Swift"

if value is String {
    print("Value is a String")
}

