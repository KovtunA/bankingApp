import Foundation

func getName() -> String {
    print("Please, write down your name")
    let usersNameOpt = readLine()
    guard let usersName = usersNameOpt?.trimmingCharacters(in: .whitespaces)  else {
        print("Something went wrong with the optioanl Name")
        abort()
    }
    print("Hi, \(usersName)")
    return usersName
}

func getAcc(name: String) -> Account {
    let smth = accountsArrey.first(where: {$0.name == userName})
    guard let acc = smth else {return Account(name: name, amount: 0) }
    return acc
}

var operation = ""
func chooseOperation() -> Double {
    while operation != "0" {
        print("Choose the operation: \n1 - add money \n2 - withdrow money \n0 - Exit")
        let operationOpt = readLine()
        guard let operationStr = operationOpt?.trimmingCharacters(in: .whitespaces), let operation = Int(operationStr) else {
            print("Something went wrong with the optioanl operation")
            abort()
        }
        
        switch operation {
        case 1: currentUser.amount = addMoney(currentAmount: currentUser.amount)
        case 2: currentUser.amount = withdrawMoney(currentAmount: currentUser.amount)
        case 0:
            print("\(currentUser.name), now you have \(currentUser.amount)")
            exit(0)
        default: break
        }
    }
    return currentUser.amount
}
