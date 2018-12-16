import Foundation

let documentsDir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")
var contentsOfFile = try! String(contentsOf: fileURL)

func addNewAcc(currentUser: Account) {
let newStirng = String(currentUser)
    contentsOfFile.append("\n")
   // contentsOfFile.append(currentUser)
    try! contentsOfFile.write(to: fileURL, atomically: true, encoding: .utf8)
}


var accountsArrey: [Account] = []
let infoFromfile = contentsOfFile.split(separator: "\n")
let infoFromfileMaped: [String] = infoFromfile.map { str in String(str) }
func accsessToUsers() {
    for str in infoFromfileMaped {
        let aLine = str.components(separatedBy: ",")
        let name = String (aLine[0])
        guard let amount = Double (aLine[1]) else { print("Smth wrong with optional"); continue }
        let account = Account(name: name, amount: amount)
        accountsArrey.append(account)
    }
}


