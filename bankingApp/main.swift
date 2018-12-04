import Foundation

var path = "/Users/anastasia/Desktop/project/bankingApp.csv"

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

print(moneyAmount)

print("Please, write down sum you want to replenish (to withdraw use - )")
let changesOpt = readLine()

guard let changesStr = changesOpt, let changes = Int(changesStr)  else {
    print("Something went wrong with the optioanl Changes")
    abort()
}
print(changes)

print("Now you have \(moneyAmount + changes)")

//let moneyAmountNew = changes > 0 ? {moneyAmount + changes} : {moneyAmount + changes}
//print(moneyAmountNew)

let newLine = "\(usersName), \(moneyAmount), \(changes), \(moneyAmount + changes)"
print(newLine)

func appendLine() {
    guard let accoutsInfo = try? String(contentsOfFile: path ) else {
    print("Unable to find the document")
    abort()
    }
        do {
            try newLine.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to create file")
            print("\(error)")
        }
    }

appendLine()


//func appendNewline(to url: URL) {
//    if let fileHandle = try? FileHandle(forWritingTo: url) {
//        defer {
//            fileHandle.closeFile()
//        }
//        fileHandle.seekToEndOfFile()
//        fileHandle.write(self)
//    } else {
//        try write(to: url)
//    }
//}

//}


//
//do {
//    try newLine.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
//} catch {
//    print("Failed to create file")
//    print("\(error)")
//}
