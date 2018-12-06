
import Foundation

func logIn() {
    print("Please, write down your name")
    let usersNameOpt = readLine()
    guard let usersName = usersNameOpt  else {
        print("Something went wrong with the optioanl Name")
        abort()
    }
    var currentUser = Account.init(name: usersName, amount: 0)
    
    print("Hi, \(currentUser.name) Now you have \(currentUser.amount)")
    func chooseOperation() {
        print("Choose the operation: \n 1 - add money \n 2 - withdrow money")
        let operationOpt = readLine()
        guard let operationStr = operationOpt, let operation = Int(operationStr) else {
            print("Something went wrong with the optioanl operation")
            abort()
        }
            switch operation {
            case 1: addMoney()
            case 2: withdrowMoney()
            default: break
        }
    
    }
}
