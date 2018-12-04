import Foundation

//var path = "/Users/anastasia/Desktop/project/bankingApp.csv"
//
//guard let accoutsInfo = try? String(contentsOfFile: path ) else {
//    print("Unable to find the document")
//    abort()
//}
//
//print(accoutsInfo)

print("Please, write down your name")
let usersNameOpt = readLine()
guard let usersName = usersNameOpt  else {
    print("Something went wrong with the optioanl Name")
    abort()
}

print("Please, write down your amount of money you have")
let moneyAmountOpt = readLine()
guard let moneyAmountStr = moneyAmountOpt, let moneyAmount = Int(moneyAmountStr) else {
    print("Something went wrong with the optioanl moneyAmount")
    abort()
}

print("Please, write down sum you want to replenish (to withdraw use - )")
//let changesOpt = readLine()
guard let changesStr = readLine(), let changes = Int(changesStr)  else {
    print("Something went wrong with the optioanl Changes")
    abort()
}


var newMoneyamount = moneyAmount + changes


if newMoneyamount > 0 { print("Now you have \(newMoneyamount)") } else { print("You have less than 0! It's \(newMoneyamount)") }

let newLine = "\(usersName), \(moneyAmount), \(changes), \(newMoneyamount)"

let documentsDir = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")


var contents = try String(contentsOf: fileURL)
contents.append("\n")
contents.append(newLine)
try contents.write(to: fileURL, atomically: true, encoding: .utf8)

print(contents)
