// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("Enter an adjective:")
        let adjective1 = readLine()!

        print("Enter a noun:")
        let noun1 = readLine()!

        print("Enter a verb:")
        let verb1 = readLine()!

        print("Enter an adjective:")
        let adjective2 = readLine()!

        print("Enter a noun:")
        let noun2 = readLine()!

        let madLibString = "If you ever meet a \(adjective1) \(noun1) you should \(verb1) away to the most \(adjective2) \(noun2) you can find."

        print(madLibString)
    }
}
