//import Foundation
//
//let path = "/Users/anastasia/Desktop/project/bankingApp.csv"
//
//guard let accoutsInfo = try? String(contentsOfFile: path ) else {
//    print("Unable to find the document")
//    abort()
//}
//
//
//
//func appendNewline(to: String, newline: String) {
//    let existedInfo = accoutsInfo
//    do {
//        try newLine.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
//    } catch {
//        print("Failed to create file")
//        print("\(error)")
//    }
//    
//}

//let path = "/Users/anastasia/Desktop/project/bankingApp.csv"

extension String {
    func appendLineToURL(fileURL: URL) throws {
        try (self + "\n").appendToURL(fileURL: fileURL)
    }
    
    func appendToURL(fileURL: URL) throws {
        let data = self.data(using: String.Encoding.utf8)!
        try data.append(fileURL: fileURL)
    }
}

extension Data {
    func append(fileURL: URL) throws {
        if let fileHandle = FileHandle(forWritingAtPath: fileURL.path) {
            defer {
                fileHandle.closeFile()
            }
            fileHandle.seekToEndOfFile()
            fileHandle.write(self)
        }
        else {
            try write(to: fileURL, options: .atomic)
        }
    }
}
//test
do {
    let dir: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last! as URL
    let url = dir.appendingPathComponent("logFile.txt")
    try "Test \(Date())".appendLineToURL(fileURL: url as URL)
    let result = try String(contentsOf: url as URL, encoding: String.Encoding.utf8)
}
catch {
    print("Could not write to file")
}
