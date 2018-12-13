import Foundation

var currentUser: Account

var userName = getName()
//func searchForAcc(name: String) {
//        if let smth = accountsArrey.first(where: {$0.name == userName}) == nil {
//
//            //let currentUser = Account.init(name: <#T##String#>, amount: <#T##Double#>)
//
//    } else {
//  let currentUser = Account.init(name: userName, amount: 0)
//    }
//}

accsessToUsers()
print(accountsArrey)

func getAcc(name: String) -> Account {
    <#function body#>
}

let smth = accountsArrey.first(where: {$0.name == userName})
guard let smth = smth else {abort()}
currentUser = smth
print(currentUser)


