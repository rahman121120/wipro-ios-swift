
import Foundation

// MARK: - Operators in Swift

let a = 20
let b = 10

// 1. Arithmetic Operators
print("Addition:", a + b)
print("Subtraction:", a - b)
print("Multiplication:", a * b)
print("Division:", a / b)
print("Remainder:", a % b)

// 2. Comparison Operators
print("Equal:", a == b)
print("Not Equal:", a != b)
print("Greater Than:", a > b)
print("Less Than:", a < b)

// 3. Logical Operators
let isStudent = true
let hasID = true

print("AND:", isStudent && hasID)
print("OR:", isStudent || hasID)
print("NOT:", !isStudent)

// 4. Assignment Operators
var score = 50
score += 10
print("Updated Score:", score)

// 5. Range Operators
for number in 1...5 {
    print("Closed Range:", number)
}

for number in 1..<5 {
    print("Half-Open Range:", number)
}

// 6. Ternary Operator
let age = 21
let eligibility = age >= 18 ? "Eligible" : "Not Eligible"
print("Voting:", eligibility)

// 7. Nil Coalescing Operator
let username: String? = nil
let displayName = username ?? "Guest"
print("Username:", displayName)

// 8. Type Checking
let value: Any = "Swift"

if value is String {
    print("Value is a String")
}

