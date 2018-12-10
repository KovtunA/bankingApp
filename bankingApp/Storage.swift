import Foundation

let documentsDir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")
var contentsOfFile = try! String(contentsOf: fileURL)

func addNewAcc() {
//contentsOfFile.append("\n")
//contentsOfFile.append()
try! contentsOfFile.write(to: fileURL, atomically: true, encoding: .utf8)
}

var newArray: [Account] = []
let randomNames = contentsOfFile.split(separator: "\n")

//let line = randomNames.map { aLine:() in}
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
