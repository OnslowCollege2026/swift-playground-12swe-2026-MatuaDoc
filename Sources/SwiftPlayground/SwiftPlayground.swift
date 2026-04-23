// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let adjective1 = readLine()!
        let noun1 = readLine()!
        let verb1 = "sing"

        let madLibString = "Once upon a time, there was a \(adjective1) \(noun1) who loved to \(verb1) every day."

        print(madLibString)
    }
}
