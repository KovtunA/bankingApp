import Foundation

let documentsDir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")
var contentsOfFile = try! String(contentsOf: fileURL)

 var newInfo: String = ""
func updateInfo(usersName:String, usersAmount: Double) {
    let acc = accountsArrey.filter {$0.name != usersName}
    for elm in acc {
        let elmString = String("\n\(elm.name),\(elm.amount)")
        newInfo.append(elmString)
        try! newInfo.write(to: fileURL, atomically: true, encoding: .utf8)
    }
    let newStirng = String("\n\(usersName),\(usersAmount)")
  newInfo.append(newStirng)
    try! newInfo.write(to: fileURL, atomically: true, encoding: .utf8)
    
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



