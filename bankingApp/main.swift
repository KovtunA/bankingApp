import Foundation

accsessToUsers()

var userName = ""
repeat { userName = getName() }
while  userName.count <= 0

var  currentUser: Account = getAcc(name: userName)
print(currentUser)

//func sendMoney(currentAmount: Double) -> Double {
//    let recipName = getName()
//    let smth = accountsArrey.first(where: {$0.name == recipName})
//    guard let acc = smth else { print("Wrong recipient's name")
//        abort()}
//    let recipAcc = getAcc(name: recipName)
//    print("print the amount of money you'd like to send")
//   guard let sentMoneyStr = readLine(), let sentMoney = Double(sentMoneyStr) else {
//        print("Something went wrong with the optioanl sentMoney")
//        abort()}
//    let currentAmount = currentAmount - sentMoney
//    let recipAmount = acc.amount + sentMoney
//    
//    
//    return currentAmount
//}




currentUser.amount = chooseOperation()
print(currentUser)

