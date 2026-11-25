
import Foundation

print("----- ARRAYS -----")

var fruits: [String] = ["Apple", "Banana", "Orange"]

print("First Fruit:", fruits[0])

fruits.append("Mango")

fruits.insert("Grapes", at: 1)

fruits.remove(at: 2)

fruits[0] = "Watermelon"

print("Fruits:", fruits)
print("Total Fruits:", fruits.count)

for fruit in fruits {
    print(fruit)
}

print("\n----- SETS -----")

var numbers: Set<Int> = [10, 20, 30, 20, 10]

numbers.insert(40)
numbers.remove(10)

print("Unique Numbers:", numbers)
print("Contains 20:", numbers.contains(20))

let firstSet: Set<Int> = [1, 2, 3, 4]
let secondSet: Set<Int> = [3, 4, 5, 6]

print("Union:", firstSet.union(secondSet))
print("Intersection:", firstSet.intersection(secondSet))
print("Difference:", firstSet.subtracting(secondSet))

print("\n----- DICTIONARIES -----")

var student: [String: Any] = [
    "name": "Rahman",
    "age": 21,
    "grade": "A"
]

print("Name:", student["name"] ?? "Unknown")

student["college"] = "Karpagam"

student["age"] = 22

student.removeValue(forKey: "grade")

print("Student Details:", student)

for (key, value) in student {
    print("\(key): \(value)")
}

print("\n----- TUPLES -----")

let employee = (
    name: "Rahman",
    role: "iOS Developer",
    experience: 1
)

print("Employee:", employee.name)
print("Role:", employee.role)
print("Experience:", employee.experience)


let (name, role, experience) = employee

print("Name:", name)
print("Role:", role)
print("Experience:", experience)

print("\n----- HIGHER-ORDER OPERATIONS -----")

let marks = [45, 80, 65, 90, 35]

let passedMarks = marks.filter { $0 >= 50 }
print("Passed Marks:", passedMarks)


let doubledMarks = marks.map { $0 * 2 }
print("Doubled Marks:", doubledMarks)


let totalMarks = marks.reduce(0) { $0 + $1 }
print("Total Marks:", totalMarks)