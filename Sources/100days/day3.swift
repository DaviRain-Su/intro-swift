//
//  day3.swift
//  intro-swift
//
//  Created by davirian on 2024/6/7.
//

import Foundation

func day3() {
    print("-----------------Day3!!-----------------------");
    // array
    var beatles = ["John", "Paul","George","Ringo"]
    let numbers = [4, 8, 15, 16, 23, 42]
    let temperatures = [25.3, 28.2, 26.2]
    print(beatles,numbers,temperatures)

    beatles.append("Adrian")
    beatles.append("Allen")
    beatles.append("Novall")
    beatles.append("Vivian")

    print(beatles)

    var scores = Array<Int>()
    scores.append(100)
    scores.append(80)
    scores.append(85)
    print(scores)

    var albums = Array<String>()
    albums.append("Folklore")
    albums.append("Fearless")
    albums.append("Red")
    print(albums)

    var albums1 = [String]()
    albums1.append("Folklore")
    albums1.append("Fearless")
    albums1.append("Red")
    print(albums1)

    var albums2 = ["Folklore"]
    //albums2.append("Folklore")
    albums2.append("Fearless")
    albums2.append("Red")
    print(albums2)
    print(albums.count)

    var characters = ["Lana", "Pam", "Ray", "Sterling"]
    print(characters.count)

    characters.remove(at: 2)
    print(characters.count)

    characters.removeAll()
    print(characters.count)

    let bondMovies = ["Casino Royale", "Spectre", "Not Time to Die"]
    print(bondMovies.contains("Frozen"))

    let cities = ["London", "Tokyo", "Rome", "Budapest"]
    print(cities.sorted())

    let presidents = ["Bush", "Obama", "Trump", "Biden"]
    let reversedPresidents = presidents.reversed()
    print(reversedPresidents)

    // dictionaries

    let employee = [
        "name": "Taylor Swift",
        "job": "Singer",
        "location": "Nashville"
    ]
    print(employee)
    print(employee["name", default: "Unknown"])
    print(employee["job", default: "Unknown"])
    print(employee["location", default: "Unknown"])

    let hasGraduated = [
        "Eric": false,
        "Maeve": true,
        "Otis": false,
    ]
    print(hasGraduated)

    let olympics = [
        2012: "London",
        2016: "Rio de Janeiro",
        2021: "Tokyo",
    ]
    print(olympics)

    var heights = [String: Int]()
    heights["Yar Ming"] = 229
    heights["Shaquille O'Neal"] = 216
    heights["LeBron James"] = 206
    print(heights)

    var archEnemies = [String: String]()
    archEnemies["Batman"] = "The Joker"
    archEnemies["Superman"] = "Lex Lutheor"
    archEnemies["Batman"] = "Penguin"
    print(archEnemies)

    // set
    let people = Set(["Denel Washington", "Tom Cruise", "Micolas Cage", "Samuel L Jackson"])
    print(people)

    var people1 = Set<String>()
    people1.insert("Denel Washington")
    people1.insert("tom Cruise")
    people1.insert("Nicolas Cage")
    people1.insert("Samuel L Jackson")
    print(people1)
    print(people1.count)
    print(people1.sorted())

    // enum
    enum Weekday {
        case monday
        case tuseday
        case wednesday
        case thursday
        case friday
    }

    var day = Weekday.monday
    day = Weekday.tuseday
    day = Weekday.friday
    print(day)

    enum Weekday1 {
        case monday, tuseday, wednesday, thursday, friday
    }

    print(Weekday1.friday)
    print("--------------------Day3 End--------------------")

}
