import Foundation

let documentsDir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")
var contentsOfFile = try! String(contentsOf: fileURL)

func addNewAcc() {
    //contentsOfFile.append("\n")
    //contentsOfFile.append()
    try! contentsOfFile.write(to: fileURL, atomically: true, encoding: .utf8)
}

func accsessToUsers(contentsOfFile: String) {
    var accountsArrey: [Account] = []
    let infoFromfile = contentsOfFile.split(separator: "\n")
    let infoFromfileMaped: [String] = infoFromfile.map { str in String(str) }
    
    for str in infoFromfileMaped {
        let aLine = str.components(separatedBy: ",")
        let name = String (aLine[0])
        guard let amount = Double (aLine[1]),
            let changes = Double (aLine[2]),
            let newResult = Double (aLine[3]) else { print("Smth wrong with optional"); continue }
        let account = Account(name: name, account: amount, changes: changes, amount: newResult)
        accountsArrey.append(account)
    }
}

