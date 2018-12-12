import Foundation


func addMoney(currentAmount: Double) -> Double{
    print("Write the amount you would like to add to your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    
    let currentAmount = currentAmount + changes
    return currentAmount
}

func withdrowMoney(currentAmount: Double) -> Double{
    print("Write the amount you would like to withdraw from your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    if currentAmount > 0 {
        let currentAmount = currentAmount - changes} else { print("You can't withdrow money. Your amount is \(currentAmount)")}
    return currentAmount
}

func chooseOperation() -> Int {
    print("Choose the operation: \n 1 - add money \n 2 - withdrow money")
    let operationOpt = readLine()
    guard let operationStr = operationOpt, let operation = Int(operationStr) else {
        print("Something went wrong with the optioanl operation")
        abort()
    }
    return operation
}
