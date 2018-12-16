import Foundation
accsessToUsers()
var userName = getName()
var  currentUser: Account = getAcc(name: userName)

print(currentUser)


currentUser.amount = chooseOperation()

print(currentUser)
addNewAcc()
print(accountsArrey)
