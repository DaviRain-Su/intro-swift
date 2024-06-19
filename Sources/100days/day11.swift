func day11() {
    print("day 11")
}

struct BankAccount {

    private var funds = 0

    mutating func deposit(_ amount: Int) {
        funds += amount
    }

    mutating func withdraw(_ amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }

    // 使用 private 表示“不要让结构体之外的任何东西使用它”。
    // 使用 fileprivate 表示“不要让当前文件之外的任何内容使用它”。
    // 使用 public 表示“让任何人、任何地方都可以使用它”。

}

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("Adding \(student)...")
        studentCount += 1
    }
}

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

//struct Employee {
//    let username: String
//    let password: String
//
//    static let example = Employee(username: "cfederighi", password: "hairforceone")
//}
//

struct Car {
    let model: String
    let seats: Int
    private var gear: Int

    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
        self.gear = 1
    }

    mutating func upGear() {
        gear += 1
    }

    mutating func downGear() {
        gear -= 1
    }
}
