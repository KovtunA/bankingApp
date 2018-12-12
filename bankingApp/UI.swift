import Foundation

func getName() -> String {
    print("Please, write down your name")
    let usersNameOpt = readLine()
    guard let usersName = usersNameOpt  else {
        print("Something went wrong with the optioanl Name")
        abort()
    }
    print("Hi, \(usersName)")
    return usersName
}

func chooseOperation() {
    print("Choose the operation: \n 1 - add money \n 2 - withdrow money")
    let operationOpt = readLine()
    guard let operationStr = operationOpt, let operation = Int(operationStr) else {
        print("Something went wrong with the optioanl operation")
        abort()
    }
    
    switch operation {
    case 1: addMoney(currentAmount: currentUser.amount)
    case 2: withdrowMoney(currentAmount: currentUser.amount)
    default: break
    }
}
