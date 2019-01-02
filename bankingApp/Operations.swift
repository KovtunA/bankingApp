import Foundation


func addMoney(currentAmount: Double) -> Double {
    print("Write the amount you would like to add to your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    
    let currentAmountN = currentAmount + changes
    print("\(currentUser.name), now you have \(currentAmountN)")
    updateInfo(usersName: currentUser.name, usersAmount: currentAmountN)
    saveAllInfo(usersName: currentUser.name)
    return currentAmountN
}

func withdrawMoney(currentAmount: Double) -> Double {
    print("Write the amount you would like to withdraw from your account")
    guard let changesStr = readLine(), let changes = Double(changesStr)  else {
        print("Something went wrong with the optioanl Changes")
        abort()}
    if currentAmount >= changes{
        let currentAmountN = currentAmount - changes
        print("\(currentUser.name), now you have \(currentAmountN)")
        updateInfo(usersName: currentUser.name, usersAmount: currentAmountN)
        saveAllInfo(usersName: currentUser.name)
        return currentAmountN
    } else if currentAmount < changes {
        print("you can't withdraw money")
        return currentAmount
    }
    return currentAmount
}

func sendMoney(currentAmount: Double) -> Double {
    let recipName = getName()
    let smth = accountsArrey.first(where: {$0.name == recipName})
    guard let acc = smth else { print("Wrong recipient's name")
        abort()}
    //  let recipAcc = getAcc(name: recipName)
    print("print the amount of money you'd like to send")
    guard let sentMoneyStr = readLine(), let sentMoney = Double(sentMoneyStr) else {
        print("Something went wrong with the optioanl sentMoney")
        abort()}
    
    if currentAmount >= sentMoney
    {
        let currentAmount = currentAmount - sentMoney
        let recipAmount = acc.amount + sentMoney
        
        print("Now \(currentUser.name) has \(currentAmount)")
        print("and \(recipName) has \(recipAmount)")
        updateInfo(usersName: currentUser.name, usersAmount: currentAmount)
        updateInfo(usersName: recipName, usersAmount: recipAmount)
        saveAllInfo(usersName: currentUser.name)
    } else if currentAmount < sentMoney {
        print("you can't withdraw money")}
    return currentAmount
}


