import Foundation

let documentsDir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")
var contentsOfFile = try! String(contentsOf: fileURL)

 var newInfo: String = ""
func updateInfo() {
    let acc = accountsArray.filter {$0.name != currentUser.name}
    for elm in acc {
        let elmString = String("\n\(elm.name),\(elm.amount)")
        newInfo.append(elmString)
        try! newInfo.write(to: fileURL, atomically: true, encoding: .utf8)
    }
    let newStirng = String("\n\(currentUser.name),\(currentUser.amount)")
  newInfo.append(newStirng)
    try! newInfo.write(to: fileURL, atomically: true, encoding: .utf8)
}

var updatedArray = [Account]()
func updateAccArray(_ needToSave: Account) -> [Account] {
     updatedArray = accountsArray.filter { $0.name != needToSave.name }
    updatedArray.append(needToSave)
    return updatedArray
}

func writeToFile() {
//    let smth = updatedArray.compactMap {String }
//    let newInfo = updatedArray.compactMap() { String("\n\($0.name),\($0.amount)") + "\n" }
//     try! newInfo.write(to: fileURL, atomically: true, encoding: .utf8)
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



