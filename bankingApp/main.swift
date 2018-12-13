import Foundation

var currentUser: Account

var userName = getName()


accsessToUsers()
print(accountsArrey)

func getAcc(name: String) -> Account {
    let smth = accountsArrey.first(where: {$0.name == userName})
    guard let acc = smth else {return Account(name: name, amount: 0) }
    return acc
    }

print(getAcc(name: userName))

//let smth = accountsArrey.first(where: {$0.name == userName})
//guard let smth = smth else {abort()}
//currentUser = smth
//print(currentUser)


