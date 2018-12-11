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
    var newArray: [Account] = []
    let infoFromfileMaped: [String] = contentsOfFile.map { str in String(str) }
    
    var lineComponents: [[String]] = []
    
    for str in infoFromfileMaped {
        lineComponents.append(str.components(separatedBy: ","))
        }
}
//let name = String ()
//let amount = Double
//let changes = Double
//let newResult = Double
//guard let infoFromfile=infoFromfile else {print("Smth wrong wit infoFromFile")}


//let line = randomNames.сmap { aLine:() in}
//    let surnameLastnameAge = aLine.replacingOccurrences(of: "\"", with: "").split(separator:",")
//    guard surnameLastnameAge.count == 3, let age = Int(surnameLastnameAge[2]) else { print("Smth went wrong")
//        return}
//
//    let lastName = String(surnameLastnameAge[1])
//    let firstName = String(surnameLastnameAge[0])
//    let people = Person(firstName: firstName, lastName: lastName, age: age)
//    newArray.append(people)
//
//}
//
//
//for aLine in randomNames {
//    let surnameLastnameAge = aLine.replacingOccurrences(of: "\"", with: "").split(separator:",")
//    guard surnameLastnameAge.count == 3, let age = Int(surnameLastnameAge[2]) else { continue }
//
//    let lastName = String(surnameLastnameAge[1])
//    let firstName = String(surnameLastnameAge[0])
//    let people = Person(firstName: firstName, lastName: lastName, age: age)
//    newArray.append(people)
//}
//print(newArray.count)
