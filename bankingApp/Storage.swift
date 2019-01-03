import Foundation

let documentsDir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")
var contentsOfFile = try! String(contentsOf: fileURL)

var newInfo: String = ""
func updateAccArray(_ needToSave: Account) {
    accountsArray = accountsArray.filter { $0.name != needToSave.name }
    accountsArray.append(needToSave)
}

func writeToFile() {

    let newInfo = accountsArray.map { String("\($0.name),\($0.amount)") }.joined(separator: "\n")
    try! newInfo.write(to: fileURL, atomically: true, encoding: .utf8)
}

var accountsArray: [Account] = []
let infoFromfile = contentsOfFile.split(separator: "\n")
let infoFromfileMaped: [String] = infoFromfile.map { str in String(str) }
func accsessToUsers() {
    for str in infoFromfileMaped {
        let aLine = str.components(separatedBy: ",")
        let name = String (aLine[0])
        guard let amount = Double (aLine[1]) else { print("Smth wrong with optional"); continue }
        let account = Account(name: name, amount: amount)
        accountsArray.append(account)
    }
}



