import Foundation
func workingWithStorage(){
let documentsDir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
let fileURL = documentsDir.appendingPathComponent("Tasks").appendingPathExtension("csv")


var contents = try! String(contentsOf: fileURL)
contents.append("\n")
//contents.append(newLine)
try! contents.write(to: fileURL, atomically: true, encoding: .utf8)

}
