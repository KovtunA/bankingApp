import Foundation


func addMoney(currentAmount: Double) -> Double {
    print("Write the amount you would like to add to your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    
    let currentAmountN = currentAmount + changes
    print("\(currentUser.name), now you have \(currentAmountN)")
    return currentAmountN
}

func withdrowMoney(currentAmount: Double) -> Double {
    print("Write the amount you would like to withdraw from your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    let currentAmountN = currentAmount - changes
    print("\(currentUser.name), now you have \(currentAmountN)")
    return currentAmountN
}
