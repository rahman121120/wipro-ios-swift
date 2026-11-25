
import Foundation

// MARK: - Collections in Swift

// 1. ARRAYS
print("----- ARRAYS -----")

var fruits: [String] = ["Apple", "Banana", "Orange"]

// Access elements
print("First Fruit:", fruits[0])

// Add elements
fruits.append("Mango")

// Insert element
fruits.insert("Grapes", at: 1)

// Remove element
fruits.remove(at: 2)

// Update element
fruits[0] = "Watermelon"

print("Fruits:", fruits)
print("Total Fruits:", fruits.count)

// Iterate through array
for fruit in fruits {
    print(fruit)
}

// 2. SETS
print("\n----- SETS -----")

var numbers: Set<Int> = [10, 20, 30, 20, 10]

numbers.insert(40)
numbers.remove(10)

print("Unique Numbers:", numbers)
print("Contains 20:", numbers.contains(20))

// Set Operations
let firstSet: Set<Int> = [1, 2, 3, 4]
let secondSet: Set<Int> = [3, 4, 5, 6]

print("Union:", firstSet.union(secondSet))
print("Intersection:", firstSet.intersection(secondSet))
print("Difference:", firstSet.subtracting(secondSet))

// 3. DICTIONARIES
print("\n----- DICTIONARIES -----")

var student: [String: Any] = [
    "name": "Rahman",
    "age": 21,
    "grade": "A"
]

// Access value
print("Name:", student["name"] ?? "Unknown")

// Add new key-value pair
student["college"] = "Karpagam"

// Update value
student["age"] = 22

// Remove value
student.removeValue(forKey: "grade")

print("Student Details:", student)

// Iterate through dictionary
for (key, value) in student {
    print("\(key): \(value)")
}

// 4. TUPLES
print("\n----- TUPLES -----")

let employee = (
    name: "Rahman",
    role: "iOS Developer",
    experience: 1
)

// Access using named properties
print("Employee:", employee.name)
print("Role:", employee.role)
print("Experience:", employee.experience)

// Tuple destructuring
let (name, role, experience) = employee

print("Name:", name)
print("Role:", role)
print("Experience:", experience)

// 5. COLLECTION TRANSFORMATIONS
print("\n----- HIGHER-ORDER OPERATIONS -----")

let marks = [45, 80, 65, 90, 35]

// Filter
let passedMarks = marks.filter { $0 >= 50 }
print("Passed Marks:", passedMarks)

// Map
let doubledMarks = marks.map { $0 * 2 }
print("Doubled Marks:", doubledMarks)

// Reduce
let totalMarks = marks.reduce(0) { $0 + $1 }
print("Total Marks:", totalMarks)