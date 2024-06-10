// The Swift Programming Language
// https://docs.swift.org/swift-book
//
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser

@main
struct intro_swift: ParsableCommand {
    mutating func run() throws {
        day6()
        print("Hello, world!")
    }
}
