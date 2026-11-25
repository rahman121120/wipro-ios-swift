
import Foundation


enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
    case saturday, sunday
}

let today = Weekday.wednesday
print("Today:", today)

func checkDay(_ day: Weekday) {
    switch day {
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        print("It's a working day")
    case .saturday, .sunday:
        print("It's a weekend")
    }
}

checkDay(today)

enum Direction: String {
    case north = "North"
    case south = "South"
    case east = "East"
    case west = "West"
}

let direction = Direction.north
print("Direction:", direction.rawValue)

enum Priority: Int {
    case low = 1
    case medium = 2
    case high = 3
}

let taskPriority = Priority.high
print("Priority:", taskPriority.rawValue)

enum NetworkStatus {
    case connected(speed: Int)
    case disconnected(reason: String)
}

let status = NetworkStatus.connected(speed: 100)

switch status {
case .connected(let speed):
    print("Connected at \(speed) Mbps")
case .disconnected(let reason):
    print("Disconnected:", reason)

enum CalculatorOperation {
    case addition
    case subtraction
    case multiplication

    func calculate(a: Int, b: Int) -> Int {
        switch self {
        case .addition:
            return a + b
        case .subtraction:
            return a - b
        case .multiplication:
            return a * b
        }
    }
}

let operation = CalculatorOperation.addition
print("Result:", operation.calculate(a: 10, b: 5))

enum AppTheme {
    case light
    case dark

    var description: String {
        switch self {
        case .light:
            return "Light Mode"
        case .dark:
            return "Dark Mode"
        }
    }
}

let theme = AppTheme.dark
print("Selected Theme:", theme.description)

enum Season: CaseIterable {
    case spring, summer, autumn, winter
}

for season in Season.allCases {
    print("Season:", season)
}

enum HTTPStatus: Int {
    case success = 200
    case notFound = 404
    case serverError = 500
}

let response = HTTPStatus(rawValue: 404)

if let validResponse = response {
    print("HTTP Status:", validResponse)
} else {
    print("Unknown HTTP Status")
}
