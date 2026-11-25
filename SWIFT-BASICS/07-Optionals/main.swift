
import Foundation

var username: String? = "Rahman"
var email: String? = nil

print("Username:", username as Any)
print("Email:", email as Any)

var phoneNumber: String? = "9876543210"
phoneNumber = nil

print("Phone:", phoneNumber as Any)

let name: String? = "Swift"

if name != nil {
    print("Name:", name!)
}

let userAge: Int? = 21

if let age = userAge {
    print("Age:", age)
} else {
    print("Age is unavailable")
}

func displayUser(name: String?) {
    guard let validName = name else {
        print("Username is missing")
        return
    }

    print("Welcome, \(validName)")
}

displayUser(name: "Rahman")
displayUser(name: nil)

let displayName = username ?? "Guest"
print("Display Name:", displayName)

let displayEmail = email ?? "No email available"
print("Display Email:", displayEmail)

struct Student {
    var name: String
    var address: Address?
}

struct Address {
    var city: String
}

let student = Student(
    name: "Rahman",
    address: Address(city: "Coimbatore")
)

let city = student.address?.city
print("City:", city ?? "Unknown")

let optionalMark: Int? = 85

let doubledMark = optionalMark.map { $0 * 2 }

print("Doubled Mark:", doubledMark ?? 0)

let firstNumber: Int? = 10
let secondNumber: Int? = 20

if let first = firstNumber,
   let second = secondNumber {
    print("Total:", first + second)
}

var serverName: String! = "Production Server"

print("Server:", serverName!)
