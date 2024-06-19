
func day8() {
    print("Day 8!!")

    // default value
    printTimesTables(for: 5)
    printTimesTables(for: 5, end: 20)

    var characters = ["Lana", "Pam", "Ray", "Sterling"];
    print(characters.count)
    characters.removeAll()
    print(characters.count)

    // error
    //
    let string = "12345";

    do {
        let result = try checkPassword(string);
        print("Result: \(result)")
    } catch PasswordError.short {
        print("Please enter a password with at least 5 characters")
        //print("Error: \(error)")
    } catch PasswordError.obvious {
        print("Please enter a password that is not '12345'")
        //print("Error: \(error)")
    } catch {
        print("An unknown error occurred: \(error)")
    }

    // checkpoint4

    do {
        let result = try mySqrt(num: 3);
        print("Result: \(result)")
    } catch SqrtError.negative {
        print("Please enter a positive number")
    } catch SqrtError.overflow {
        print("Please enter a number less than 1000")
    } catch SqrtError.notroot {
        print("The number is not a perfect square")
    } catch {
        print("An unknown error occurred: \(error)")
    }
}

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    } else if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10{
        return "Good"
    } else {
        return "Excellent"
    }
}


enum SqrtError: Error {
    case overflow, negative, notroot
}

func mySqrt(num: Double) throws -> Double {
    if num < 0 {
        throw SqrtError.negative
    } else if num > 1000 {
        throw SqrtError.overflow
    }

    for i in 0...100 {
        if Double(i * i) == num {
            return Double(i)
        }
    }

    throw SqrtError.notroot
}
