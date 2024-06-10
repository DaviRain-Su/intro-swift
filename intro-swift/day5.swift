//
//  day5.swift
//  intro-swift
//
//  Created by davirian on 2024/6/8.
//

import Foundation

func day5() {
    // if condation
    let score = 85;

    if score > 80 {
        print("Great Job!!");
    }

    let speed = 88;
    let percentage = 85;
    let age = 18;

    if speed >= 88 {
        print("Where we're going we don't need roads.");
    }

    if percentage < 85 {
        //print("Sorry, you failed the test.");
    }

    if age >= 18 {
        print("You're eligible to vote.");
    } else {
        //print("Sorry, you're too young to vote.");
    }

    let ourName = "Dave Lister";
    let friendName = "Arnold Rimmer";

    if ourName < friendName {
        print("It's \(ourName) vs \(friendName)");
    } else {
        print("It's \(friendName) vs \(ourName)");
    }

    var numbers = [1, 2, 3];
    numbers.append(4);
    if numbers.count > 3 {
        numbers.remove(at: 0);
    }
    print(numbers);

    let country = "Canada";
    if country == "Australia" {
        print("G'Day!");
    }

    let name = "Taylor Swift";
    if name != "Anonymous" {
        print("Welcome, \(name)");
    }

    // create the usrname variable
    var username = "talyswift13";
    // if 'username' contains an empty string
    if username == "" {
        // Make it equal to "Anonymous
        username = "Anonymous";
    }

    if username.isEmpty {
        username = "Anonymous";
    }
    print("Welcome, \(username)!");

    let a = false;
    let b = true;

    if a {
        //print("Code to run if a is true!");
    } else if b {
        print("Code to run if a is false but b is true!");
    } else {
        //print("Code to run if both a and b are false!");
    }

    let temp = 25;
    if temp > 20 {
        if temp < 30 {
            print("It's a nice day.");
        }
    }

    if temp > 20 && temp < 30 {
        print("It's a nice day.");
    }

    let userAge = 14;
    let hasParentalConsent = true;

    if userAge >= 18 || hasParentalConsent {
        print("You can buy the game!")
    }

    enum TransportOption {
        case airplane, helicopter, bicycle, car, scooter
    }

    let transport = TransportOption.airplane;

    if transport == .airplane || transport == .helicopter {
        print("Let's fly!");
    } else if transport == .bicycle {
        print("I hope there's  a bike path...");
    } else if  transport == .car {
        print("Time to get stuck in traffic.");
    } else {
        print("I'm  going to hire a scooter now!");
    }

    // switch
    enum Weather {
        case sun, rain, wind, snow, unknown
    }

//    let forecast = Weather.sun

//    switch forecast {
//    case .sun:
//        print("It should be a nice day.");
//    case .rain:
//        print("Pack an umbrella.");
//    case .wind:
//        print("Wear something warm.");
//    case .snow:
//        print("School is cancelled.");
//    case .unknown:
//        print("Our forecast generator is broken!");
    //}

    let place = "Metropolis";

    switch place {
    case "Gotham":
        print("You're batmen!");
    case "Mega-City One":
        print("you're judge Dredd!");
    case "Wakanda":
        print("You're black Panter!");
    default:
        print("Who are you?");
    }

    let day = 5;
    print("My true love gave to me.")

    switch day {
    case 5:
        print("5 golden rings");
        fallthrough
    case 4:
        print("4 calling birds");
        fallthrough
    case 3:
        print("3 French hens");
        fallthrough
    case 2:
        print("2 turtle doves");
        fallthrough
    default:
        print("A partridge in a pear tree");
    }

    //let hour = 23;
    //print(hour < 12 ? "It's before noon" : "It's after noon");

    let names = ["Jayne", "Kaylee", "Mal"];
    let crewCount = names.isEmpty ? "No One" : "\(names.count) people"
    print(crewCount)
}
