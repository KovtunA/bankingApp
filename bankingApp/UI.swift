import Foundation

func getName() -> String {
    print("Please, write down the name")
    let usersNameOpt = readLine()
    guard let usersName = usersNameOpt?.trimmingCharacters(in: .whitespaces)  else {
        print("Something went wrong with the optioanl Name")
        abort()
    }
    //print("Hi, \(usersName)")
    return usersName
}

func getAcc(name: String) -> Account {
    let accOptional = accountsArray.first(where: {$0.name == userName})
    guard let acc = accOptional else {return Account(name: name, amount: 0) }
    return acc
}

var operation = ""
func chooseOperation() -> Double {
    while operation != "0" {
        print("Choose the operation: \n1 - add money \n2 - withdrow money \n3 - sent money \n0 - Exit")
        let operationOpt = readLine()
        guard let operationStr = operationOpt?.trimmingCharacters(in: .whitespaces), let operation = Int(operationStr) else {
            print("Something went wrong with the optioanl operation")
            abort()
        }
        
        switch operation {
        case 1: currentUser = addMoney()
        case 2: currentUser = withdrawMoney()
        case 3: currentUser = sendMoney()
        case 0:
            print("\(currentUser.name), now you have \(currentUser.amount)")
            print(accountsArray)
            exit(0)
        default: break
        }
    }
    return currentUser.amount
}
