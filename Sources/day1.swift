//
//  day1.swift
//  intro-swift
//
//  Created by davirian on 2024/6/7.
//
// # Day1
//
// SwiftUI 是一个强大的框架，用于为 iOS、macOS、tvOS 甚至 watchOS 构建用户交互式应用程序。但是如果没有编程语言就无法构建软件，因此 SwiftUI 的背后是 Swift 本身：一种强大、灵活且现代的编程语言，您将用于所有 SwiftUI 应用程序。
// 正如马克·吐温曾经说过的那样，“取得成功的秘诀就是开始”。好吧，你现在就开始了，所以我们将深入了解 Swift 中的变量、常量和简单数据类型。
// 今天您有七个教程需要完成。如果您想更深入地了解每个主题，可以选择进一步阅读，但除非您愿意并且有时间，否则您不需要阅读这些内容。无论如何，有许多简短的测试可以帮助确保您理解关键概念。
// 我知道，我知道：除了下面链接的内容之外，继续观看更多视频并进行更多测试的诱惑很强烈，但请记住：不要急于求成！每天做一小时比做大块时间间隔的运动要好得多。
//
import Foundation

public func day1() {

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
}
