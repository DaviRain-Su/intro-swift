func day12() {
    print("day 12")

    let newGame = Game()
    newGame.score = 100
    print("current hightest score is ", Game.highestScore)
    newGame.score = 99
    print("current hightest score is ", Game.highestScore)

    let robert = Developer(hours: 10)
    let joseph = Manager(hours: 8)
    let jenny = Designer(hours: 12)

    robert.work()
    robert.printSummary()
    joseph.work()
    joseph.printSummary()
    jenny.design()
    jenny.printSummary()

    let user1 = User()
    let user2 = user1.copy()
    user1.username = "Bilbo Baggins"
    print(user1.username)
    print(user2.username)

    for i in 1...3 {
        let user = MyUser(id: i)
        print("User \(user.id): I'm in control!")
    }
}

class Game {
    static var highestScore = 0

    var score = 0 {
        didSet {
            if score > Game.highestScore {
                Game.highestScore = score
            }
            print("current score is ", score)
        }
    }
}


class MyEmployee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I worked for \(hours) hours.")
    }
}

class Developer: MyEmployee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }

    override func printSummary() {
        print("I'm a developer who will somethimes work \(hours) hours a day. but other times spend hours arguing about whether code should be indented using tabs or spaces. ")
    }
}

class Manager: MyEmployee {
    func work() {
        print("I'm going to meeting for \(hours) hours.")
    }
}

class Designer: MyEmployee {
    func design() {
        print("I'm designing a new app for \(hours) hours.")
    }
}

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class MyCar: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}


class User {
    var username = "Anonymous"

    func copy() -> User {
        let newUser = User()
        newUser.username = username
        return newUser
    }
}


class MyUser {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id) was created.")
    }

    deinit {
        print("User \(id) was destroyed.")
    }
}
