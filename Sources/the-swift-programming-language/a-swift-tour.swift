// Type: file
// A Swift tour
// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/
func tour_of_swift() {

    print("Tour of swift!");

    // display line
    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // Hello, World!
    print("Hello, World!");


    // Simple Values
    // Use let to make a constant and var to make a variable.
    // 这里没有表明类型，这是因为Swift会自动推断类型
    var myVariable = 42
    myVariable = 50
    let myConstant = 42

    // use debugPrint to print the value
    //
    debugPrint("my variable is ", myVariable)
    debugPrint("my constant is ", myConstant)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // An explicit value type is required
    let implicitInteger = 70
    debugPrint("implicit integer is ", implicitInteger)
    let implicitDouble = 70.0
    debugPrint("implicit double is ", implicitDouble)
    let explicitDouble: Double = 70
    debugPrint("explicit double is ", explicitDouble)
    let explicitFloat: Float = 4
    debugPrint("explicit float is ", explicitFloat)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // Values are never implicitly converted to another type
    let label = "The width is "
    let width = 94
    let widthLabel = label + String(width) // use String() to convert the value to a string
    debugPrint("widthLabel is ", widthLabel)

    // 字符串插值可以在字符串中插入常量、变量、字面量和表达式
    let apples = 3
    let oranges = 5
    let appleSummary = "I have \(apples) apples."
    let fruitSummary = "I have \(apples + oranges) pieces of fruit."
    debugPrint("appleSummary is ", appleSummary)
    debugPrint("fruitSummary is ", fruitSummary)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // Use three double quotation marks (""") for strings that take up multiple lines.
    let quotation = """
        Even though there's whitespace to the left,
        the actual lines aren't indented.
        Except for this line.
        Double quotes (") can appear without being escaped.
        I still have \(apples + oranges) pieces of fruit.
    """
    debugPrint("quotation is ", quotation)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // array
    // use [] to create an empty array or dictionary
    var shoppingList = ["catfish", "water", "tulips", "blue paint"]
    shoppingList[1] = "bottle of water"
    debugPrint("shoppingList is ", shoppingList)

    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
    ]
    occupations["Jayne"] = "Public Relations"
    debugPrint("occupations is ", occupations)

    // use append to array
    shoppingList.append("blue paint")
    debugPrint("shoppingList is ", shoppingList)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // create an empty array or dictionary
    // use [] to create an empty array or dictionary
    let emptyArray = [String]()
    let emptyDictionary = [String: Float]()
    debugPrint("emptyArray is ", emptyArray)
    debugPrint("emptyDictionary is ", emptyDictionary)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // control flow
    // use if and switch to make conditionals, and use for-in, while, and repeat-while to make loops.

    let individualScores = [75, 43, 103, 87, 12]
    var teamScore = 0
    for score in individualScores {
        if score > 50 {
            teamScore += 3
        } else {
            teamScore += 1
        }
    }
    debugPrint("teamScore is ", teamScore)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // 可以在赋值符号或者return 后面加上条件语句
    let scoreDecoration = if teamScore > 50 {
        "🎉"
    } else {
        ""
    }
    debugPrint("scoreDecoration is ", scoreDecoration)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // 使用? 来处理可选值,与Rust差一些，可以是在rust中？还可以用来返回错误
    let optionalString: String? = "Hello"
    debugPrint("optionalString is ", optionalString == nil)

    //let optionalName: String? = "John Appleseed"
    let optionalName: String? = nil
    var greeting = "Hello!"
    if let name = optionalName {
        greeting = "Hello, \(name)"
    } else {
        greeting = "Hello, stranger"
    }
    debugPrint("greeting is ", greeting)

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // 使用??来提供默认值
    let nickName: String? = nil
    let fullName: String = "John Appleseed"
    let informalGreeting = "Hi \(nickName ?? fullName)"
    debugPrint("informalGreeting is ", informalGreeting)

    if let nickName {
        debugPrint("nickName is ", nickName)
    } else {
        debugPrint("nickName is nil")
    }

    print("🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟");

    // switch
    let vegetable = "red pepper"
    switch vegetable {
    case "celery":
        debugPrint("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        debugPrint("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        debugPrint("Is it a spicy \(x)?")
    default:
        debugPrint("Everything tastes good in soup.")
    }

    // for - in
    let interestingNumbers = [
        "Prime": [2, 3, 5, 7, 11, 13],
        "Fibonacci": [1, 1, 2, 3, 5, 8],
        "Square": [1, 4, 9, 16, 25],
    ]
    var largest = 0
    for (_, numbers) in interestingNumbers {
        for number in numbers {
            if number > largest {
                largest = number
            }
        }
    }
    debugPrint("largest is ", largest)

    // while
    var n = 2
    while n < 100 {
        n *= 2
    }
    debugPrint("n is ", n)

    // repeat while
    var m = 2
    repeat {
        m *= 2
    } while m < 100
    debugPrint("m is ", m)

    // ..<, ...
    var total = 0
    for i in 0..<4 {
        total += i
    }
    debugPrint("total is ", total)

    var total2 = 0
    for i in 0...4 {
        total2 += i
    }
    debugPrint("total2 is ", total2)
}
