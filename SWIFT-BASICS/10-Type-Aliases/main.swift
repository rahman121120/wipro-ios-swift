
import Foundation

typealias StudentName = String

let name: StudentName = "Rahman"
print("Student Name:", name)

typealias StudentAge = Int

let age: StudentAge = 21
print("Student Age:", age)

typealias Marks = [Int]

let studentMarks: Marks = [85, 90, 78, 92]
print("Student Marks:", studentMarks)

typealias StudentDetails = [String: String]

let student: StudentDetails = [
    "name": "Rahman",
    "department": "CSE",
    "college": "Karpagam"
]

print("Student Details:", student)

typealias Coordinates = (x: Double, y: Double)

let location: Coordinates = (10.5, 20.5)

print("X Coordinate:", location.x)
print("Y Coordinate:", location.y)

typealias Calculation = (Int, Int) -> Int

let addition: Calculation = { a, b in
    return a + b
}

print("Addition:", addition(10, 20))

let city = "Coimbatore"
let score = 95
let percentage = 89.5
let isPassed = true

print("City:", city)
print("Score:", score)
print("Percentage:", percentage)
print("Passed:", isPassed)

let employeeID: Int = 1001
let employeeName: String = "Rahman"

print("Employee ID:", employeeID)
print("Employee Name:", employeeName)

let integerValue = 100
let doubleValue = Double(integerValue)

print("Integer:", integerValue)
print("Converted Double:", doubleValue)

let input = "250"

if let number = Int(input) {
    print("Converted Number:", number)
} else {
    print("Invalid Input")
}

let value: Any = "Swift"

if value is String {
    print("Value is a String")
}

let unknownValue: Any = "iOS Development"

if let text = unknownValue as? String {
    print("Converted Text:", text)
}
