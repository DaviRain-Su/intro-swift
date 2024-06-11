import Cocoa

func day7() {
    print("Day7!!")
    greet();
    printTimesTables(number: 5, end: 20)
    let root = sqrt(169);
    print(root)
    let result = rollDice();
    print(result)
    let c = pythagoras(a: 3, b: 4);
    print(c)

    let user = getUser();
    print("Name: \(user[0]) \(user[1])");
    let user1 = getUser1();
    print("Name: \(user1["first"]!) \(user1["last"]!)");
    let user2 = getUser2();
    print("Name: \(user2.first) \(user2.last)");
    let user3 = getUser3();
    print("Name: \(user3.first) \(user3.last)");
    let user4 = getUser4();
    print("Name: \(user4.0) \(user4.1)");
    let (firstName, lastName) = getUser3();
    print("Name: \(firstName) \(lastName)");
    let (firstName1, _) = getUser3();
    print("Name: \(firstName1)");

    let rolls = roolDice(sides: 6, count: 4);
    print(rolls)

    printTimesTables2(for: 3);
}


func greet() {
    print("Welcome to my app!");
    print("By default This prints out a conversion");
    print("chart from centimeters to inches, but you");
    print("can also set a custom range if you want.");
}

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}

func printTimesTables1(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) = \(i * number)")
    }
}

func printTimesTables2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) = \(i * number)")
    }
}

func rollDice() -> Int {
    Int.random(in: 1...6)
}


func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input);
    return root;
}

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

func getUser1() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}

func getUser2() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

func getUser3() -> (first: String, last: String) {
    ("Taylor", "Swift")
}

func getUser4() -> (String, String) {
    ("Taylor", "Swift")
}


func roolDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()

    for _ in 1...count {
        rolls.append(Int.random(in: 1...sides))
    }

    return rolls
}
