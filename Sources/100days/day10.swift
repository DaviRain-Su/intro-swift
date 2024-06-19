
func day10() {
    print("Hello, day10!")

    let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
    let winds = Album(title: "Wings", artist: "BTS", year: 2016)

    print(red.title)
    print(winds.artist)

    red.printSummary()
    winds.printSummary()

    var archer = Employee(name: "Sterling Archer")
    archer.takeVacation(days: 5)
    print(archer)
    //print("vacationRemaining = ",archer.vacationRemaining)

    archer.vacationTaken += 4
    print(archer)
    //print("vacationRemaining = ",archer.vacationRemaining)

    archer.vacationRemaining = 6
    print(archer)
    //print("vacationAllocated = ",archer.vacationAllocated)
    //print("vacationTaken = ", archer.vacationTaken)
    //print("vacationRemaining = ",archer.vacationRemaining)

    var app = App()
    app.contacts.append("John")
    app.contacts.append("Paul")
    app.contacts.append("George")

    let player = Player(name: "Taylor Swift")
    print(player.number)

    School.add(student: "Taylor Swift")
    print(School.studentCount)
}


struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) by \(artist) released in \(year)")
    }
}

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            return vacationAllocated - vacationTaken
        }
        set {
            vacationTaken = vacationAllocated - newValue
        }
    }


    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("\(name) is taking \(days) days of vacation")
        } else {
            print("Oh no, \(name) doesn't have enough vacation days left!")
        }
    }
}

struct App {
    // Swift 允许我们创建属性观察器，它们是在属性更改时运行的特殊代码片段。它们采用两种形式：
    //一个 didSet 观察者在属性刚刚更改时运行，以及
    //一个 willSet 观察者在属性更改之前运行。
    //
    // 如果您需要，Swift 会自动在 didSet 内提供常量 oldValue ，以防您需要根据您之前的更改来自定义功能。
    //还有一个 willSet 变体，它在属性更改之前运行一些代码，
    //这反过来又提供了将分配的新值，以防您想根据该值采取不同的操作。
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value will be \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

struct Player {
    let name: String
    let number: Int


    // 重要提示：虽然您可以在初始化程序中调用结构体的其他方法，但在为所有属性赋值之前不能这样做
    //- Swift 需要在执行其他操作之前确保一切都是安全的。
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
