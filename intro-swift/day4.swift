//
//  day4.swift
//  intro-swift
//
//  Created by davirian on 2024/6/8.
//

import Foundation

func day4() {
    // type annotations
    let _: String = "Lasso"
    var _: Int = 0
    let _: String = "Roy"
    let _: Int = 13
    let _: Double = 3.141
    let _: Bool = true
    let _: [String] = ["Red", "Fearless"]
    let _: [String: String] = ["id": "@twostraws"]
    var _: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman"])
    var _: [String] = ["Coke", "Pepsi", "Irn-Bru"]
    var _: [String] = [String]()
    var _: [String] = []

    // checkpoint2
    let albums = ["Red", "Fearless"]
    print("albums count: ",albums.count)
    let unique_albums = Set(albums)
    print(unique_albums)
}
