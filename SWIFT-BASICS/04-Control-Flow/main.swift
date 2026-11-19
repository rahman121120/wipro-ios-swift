
import Foundation

let age = 21

if age >= 18 {
    print("Eligible to vote")
} else {
    print("Not eligible to vote")
}

let mark = 85

if mark >= 90 {
    print("Grade: A")
} else if mark >= 75 {
    print("Grade: B")
} else if mark >= 50 {
    print("Grade: C")
} else {
    print("Grade: Fail")
}

let day = 3

switch day {
case 1:
    print("Monday")
case 2:
    print("Tuesday")
case 3:
    print("Wednesday")
case 4:
    print("Thursday")
case 5:
    print("Friday")
default:
    print("Weekend or Invalid Day")
}

for number in 1...5 {
    print("For Loop:", number)
}

var count = 1

while count <= 5 {
    print("While Loop:", count)
    count += 1
}

var value = 1

repeat {
    print("Repeat-While:", value)
    value += 1
} while value <= 5

for number in 1...10 {
    if number == 5 {
        break
    }
    print("Break Example:", number)
}

for number in 1...5 {
    if number == 3 {
        continue
    }
    print("Continue Example:", number)
}
