import Foundation

func logIn() {
    print("Please, write down your name")
    let usersNameOpt = readLine()
    guard let usersName = usersNameOpt  else {
        print("Something went wrong with the optioanl Name")
        abort()
    }
    
    //    if contentsOfFile.contains(usersName) - если есть имя работаем с текущим амаунтом если нет добавляем нового юзера (уточняя надо ли) и присваеваем ему по 0 в акк
    var currentUser = Account.init(name: usersName, account: <#Double#>, changes: <#Double#>, amount: 0)
    
    
    print("Hi, \(currentUser.name) Now you have \(currentUser.amount)")
}

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
