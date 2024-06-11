//
//  day6.swift
//  intro-swift
//
//  Created by davirian on 2024/6/10.
//

import Foundation

func day6() {
    print("-----------------Day6!!-----------------------");
    // repetive
    // for
    let platforms = ["IOS", "MacOS","TvOS", "watchOS"];
    for os in platforms {
        print("Swift works great on \(os).")
    }

    for i in 1...12 {
        print("5 x \(i) is \(5 * i)");
    }

    for i in 1...12 {
        print("The \(i) times table.");

        for j in 1...12 {
            print(" \(j) x \(i) is \(j * i)");
        }

        print()
    }

    for i in 1...5 {
        print("Counting from 1 through 5: \(i)");
    }

    print()

    for i in 1..<5 {
        print("Counting from 1 through 5: \(i)");
    }

    var lyric = "Haters gonna";

    for _ in 1...5 {
        lyric += " hate";
    }

    print(lyric)

    // while
    var countdown = 10;

    while countdown >= 0 {
        print("Countdown: \(countdown)");
        countdown -= 1;
    }
    print("Blast off!");

    let id = Int.random(in: 1...100);
    print("Random ID: \(id)");

    let amount = Double.random(in: 0...1);
    print("Random amount: \(amount)");

    // Create an integer to store our roll
    var roll = 0;

    // carry on looping until we reach 20
    while roll != 20 {
        // roll a new dice and print what it was
        roll = Int.random(in: 1...20);
        print("Roll: \(roll)");
    }
    // if we're here it means the loop ended - we got a 20!!
    print("Critical hit!!");

    let filenames = ["me.jpg","work.txt", "sophie.jpg", "logo.psd"];

    for filename in filenames {
        if filename.hasSuffix(".jpg") {
            print("\(filename) is a JPEG image");
        } else if filename.hasSuffix(".txt") {
            print("\(filename) is a text file");
        } else {
            print("Unknown file type: \(filename)");
        }
    }

    for filename in filenames {
        if filename.hasSuffix(".jpg") == false {
            continue;
        }
        print("Found picture: \(filename)")
    }

    let number1 = 4;
    let number2 = 14;
    var multiples = [Int]();

    for i in 1...100_000 {
        if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
            multiples.append(i);

            if multiples.count == 10 {
                break;
            }
        }
    }

    print(multiples)

    // checkpoint3
    for i in 1...100 {
        if i.isMultiple(of: 3) && i.isMultiple(of: 5)
        {
            print("FizzBuzz");
        } else if i % 3 == 0 {
            print("Fizz");
        } else if i % 5 == 0 {
            print("Buzz");
        } else {
            print(i);
        }

    }
    print("--------------------Day6 End--------------------")
}
