
import Foundation

enum BankError: Error {
    case insufficientBalance
    case invalidAmount
    case accountNotFound
}

func withdraw(amount: Double, balance: Double) throws -> Double {

    if amount <= 0 {
        throw BankError.invalidAmount
    }

    if amount > balance {
        throw BankError.insufficientBalance
    }

    return balance - amount
}

let accountBalance = 5000.0

do {
    let remainingBalance = try withdraw(
        amount: 2000,
        balance: accountBalance
    )

    print("Remaining Balance:", remainingBalance)

} catch BankError.insufficientBalance {
    print("Error: Insufficient balance")

} catch BankError.invalidAmount {
    print("Error: Invalid withdrawal amount")

} catch {
    print("Unexpected Error:", error)
}

do {
    let result = try withdraw(amount: 7000, balance: 5000)
    print("Balance:", result)
} catch {
    print("Transaction Failed:", error)
}

let optionalResult = try? withdraw(
    amount: 1000,
    balance: 5000
)

if let result = optionalResult {
    print("Optional Result:", result)
} else {
    print("Operation Failed")
}

let forcedResult = try! withdraw(
    amount: 1000,
    balance: 5000
)

print("Forced Result:", forcedResult)

func performOperation(
    operation: () throws -> Int
) rethrows -> Int {
    return try operation()
}

func calculateTotal() throws -> Int {
    return 100 + 200
}

do {
    let total = try performOperation(
        operation: calculateTotal
    )

    print("Total:", total)
} catch {
    print("Calculation Failed:", error)
}

enum AgeError: Error {
    case invalidAge
}

func validateAge(_ age: Int) throws -> String {

    guard age >= 18 else {
        throw AgeError.invalidAge
    }

    return "Eligible to register"
}

do {
    let message = try validateAge(21)
    print(message)
} catch AgeError.invalidAge {
    print("Registration denied: Age must be 18 or above")
} catch {
    print("Unexpected error")
}
