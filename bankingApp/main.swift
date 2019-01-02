import Foundation

accsessToUsers()

var userName = ""
repeat { userName = getName() }
while  userName.count <= 0

var  currentUser: Account = getAcc(name: userName)
print(currentUser)




currentUser.amount = chooseOperation()
print(currentUser)

