//
//  day1.swift
//  intro-swift
//
//  Created by davirian on 2024/6/7.
//
import Foundation

public func day1() {
    print("Day1!!")

    // 变量命名
    var greeting = "Hello, playground"
    print(greeting)
    greeting = "Hello, Davirain!"
    print(greeting)

    var name = "Ted"
    name = "Rebecca"
    name = "keeley"
    print(name)
    let character = "Daphne"
    print(character)

    var playNname = "Roy"
    print(playNname)


    playNname = "Dani"
    print(playNname)

    playNname = "Sam"
    print(playNname)

    let playname = "Davirain"
    print(playname)

    //  驼峰命名
    let managerName = "Michael Scott"
    let dogBreed = "Samoyed"
    let meaningOfLife = "How many roads must a man walk down?"
    print(managerName)
    print(dogBreed)
    print(meaningOfLife)

    // 字符串
    let actor = "Denzel Washington"
    print(actor)
    print("The is actor len is ", actor.count)
    let actorNameLength = actor.count
    print(actorNameLength)
    print("Uppercase actor is ", actor.uppercased())

    let filename = "paris.jpg"
    print(filename)
    let result = "🌟 you win! 🌟"
    print(result)

    let quote = "Then he tapped a sign saying \"Believe\" and walked away."
    print(quote)

    let movie = """
    A day in
    the life of an
    Apple engineer
    """
    print(movie)

    print(movie.hasPrefix("A day"))
    print(filename.hasSuffix(".jpg"))

    // Int

    let score = 10
    let reallyBig = 100_000_000
    print(score)
    print(reallyBig)

    let lowerScore = score - 2;
    let hightScore = score + 10;
    let doubledScore = score * 2;
    let squaredScore = score * score;
    let halvedScore = score / 2;
    print("score - 2 = ",lowerScore)
    print("score + 10 = ", hightScore)
    print("score * 2 = ",doubledScore)
    print("score * score = ",squaredScore)
    print("score / 2 = ", halvedScore)

    var counter = 10
    counter  = counter + 5;
    print("counter  = counter + 5;", counter);

    counter += 5;
    print("counter += 5;",counter);

    counter *= 2;
    print("counter *=2;", counter);

    counter -= 10;
    print("counter -= 10;", counter);

    counter /= 2;
    print("counter /= 2;", counter)

    let number = 120;
    print(number.isMultiple(of: 3))
    print(120.isMultiple(of: 3))

    let floatNumber = 0.1 + 0.2;
    print("0.1 + 0.2 = ", floatNumber);

    let a = 1;
    let b = 2.0;
    // let c = a + b; // Binary operator "+" cannot be applied to operands of type "Int" and "Double"
    //print("a + b = ", c);

    let c = a + Int(b)
    print("a + Int(b) = ", c);

    var nameChange = "Nicolas Cage";
    nameChange = "John Travolta";
    print(nameChange);

    //var nameChange1 = "Nicolas Cage";
    //nameChange1 = 57;// Cannot assign valut of type "int" to type "String"
    //print(nameChange1);

    var rating = 5.0
    rating *= 2
    print(rating)

    print("-------------------Day1 End-------------------")
}
