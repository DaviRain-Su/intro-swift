
func day9() {
    print("day9!!");

    let sayHello = {
        print("Hello")
    };

    sayHello();

    let sayHello1 = { (name: String) -> String in
        "Hi, \(name)"
    };

    print(sayHello1("DaviRain"));

    let data: (Int) -> String = getUserData;
    let result = data(1989);
    print(result)

    let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"];
    let sortedTeam = team.sorted();
    let captainFirstTeam = team.sorted(by: captainFirstSorted);
    print(captainFirstTeam)
    print(sortedTeam)

    let captainFirstTeam1 = team.sorted { (name1: String, name2: String) -> Bool in
        if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        } else {
            return name1 < name2
        }
    }
    print(captainFirstTeam1)

    let capainFirstTeam2 = team.sorted { name1, name2 in
        if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        } else {
            return name1 < name2
        }
    };
    print(capainFirstTeam2)

    let capainFirstTeam3 = team.sorted {
        $0 == "Suzanne" ? true : $1 == "Suzanne" ? false : $0 < $1
    };
    print(capainFirstTeam3)
    let reverseTeam = team.sorted(by: >);
    print(reverseTeam)
    let reverseTeam1 = team.sorted { $0 > $1 };
    print(reverseTeam1)
    let tOnly = team.filter { $0.hasPrefix("T") };
    print(tOnly)
    let uppercaseTeam = team.map { $0.uppercased() };
    print(uppercaseTeam)

    let rolls = makeArray(size: 5, using: { Int.random(in: 1...20) })
    print(rolls)

    let newRolls = makeArray(size: 50, using: generateNumber);
    print(newRolls)

    doImportantWork(first: { print("This is the fist workd") }, second: { print("This is the second work") }, thrid: { print("This is the thrid work") })

    // not common
    doImportantWork {
        print("work1")
    } second: {
        print("work2")
    } thrid: {
        print("work3")
    }

    // checkpoint 5
    let lunckNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49];
    lunckNumbers
        .filter { !$0.isMultiple(of: 2) }
        .sorted()
        .map({ "\($0) is a luncky number" }).forEach({ print($0) })

}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    } else {
        return name1 < name2
    }
}


func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 1...size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers;
}


func doImportantWork(first: () -> Void, second: () -> Void, thrid: () -> Void) {
    print("About to start fist work");
    first();
    print("About to start second work");
    second();
    print("About to start thrid work");
    thrid();
    print("All work is done");
}
