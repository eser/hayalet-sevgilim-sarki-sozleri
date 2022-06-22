import Foundation

if let url = Bundle.module.url(forResource: "index", withExtension: "json") {
    do {
        let data = try Data(contentsOf: url)
        do {
            let parsedLyrics = try JSONDecoder().decode(Array<String>.self, from: data)
            parsedLyrics.forEach { line in
                print(line)
            }
        } catch let error {
            print("Parsing Error: \(error.localizedDescription)")
        }
    } catch let error {
        print("ERROR: \(error.localizedDescription)")
    }
}

