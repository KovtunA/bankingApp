import Foundation


//func addMoney(currentAmount: Double) -> Double {
//    print("Write the amount you would like to add to your account")
//    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
//        print("Something went wrong with the optioanl Changes")
//        abort()}
//
//    let currentAmountN = currentAmount + changes
//    print("\(currentUser.name), now you have \(currentAmountN)")
//    updateInfo(usersName: currentUser.name, usersAmount: currentAmountN)
//    saveAllInfo(usersName: currentUser.name)
//    return currentAmountN
//}

func addMoney() -> Account {
    print("Write the amount you would like to add to your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    
   currentUser.amount += changes
    print("\(currentUser.name), now you have \(currentUser.amount)")
    updateInfo()
    return currentUser
}

func withdrawMoney() -> Account {
    print("Write the amount you would like to withdraw from your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    if currentUser.amount >= changes{
        currentUser.amount -= changes
        print("\(currentUser.name), now you have \(currentUser.amount)")
        updateInfo()
        return currentUser
    } else if currentUser.amount < changes {
        print("you can't withdraw money")
        return currentUser
    }
    return currentUser
}

func sendMoney() -> Account {
    let recipName = getName()
    let optionalRecipAcc = accountsArray.first(where: {$0.name == recipName})
    guard var recipAcc = optionalRecipAcc else { print("Wrong recipient's name")
        abort()}
    print("print the amount of money you'd like to send")
    guard let sentMoneyStr = readLine(), let sentMoney = Double(sentMoneyStr) else {
        print("Something went wrong with the optioanl sentMoney")
        abort()}
    
    if currentUser.amount >= sentMoney
    {
        currentUser.amount -= sentMoney
        recipAcc.amount += sentMoney
        
        print("Now \(currentUser.name) has \(currentUser.amount)")
        print("and \(recipAcc.name) has \(recipAcc.amount)")
    } else if currentUser.amount < sentMoney {
        print("you can't withdraw money")}
    return currentUser
}


