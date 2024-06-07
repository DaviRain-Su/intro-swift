//
//  day2.swift
//  intro-swift
//
//  Created by davirian on 2024/6/7.
//

import Foundation

func day2() {
    // bool type
    let goodGogs = true
    var gameOver = false
    print(goodGogs, gameOver)
    
    let isMultiple = 120.isMultiple(of: 3)
    print(isMultiple)
    
    var isAuthenticated = false
    isAuthenticated = !isAuthenticated
    print(isAuthenticated)
    isAuthenticated = !isAuthenticated
    print(isAuthenticated)
    
    gameOver.toggle() // cannot use mutaing member on immutable value "gameOver" is a let contanst
    print(gameOver)
    
    // String
    let firstPart = "Hello, ";
    let secondPart = "world!";
    let greeting = firstPart + secondPart;
    print(greeting)
    
    let people = "Haters"
    let action = "hate"
    let lyric = people + " gonna " + action;
    print(lyric)
    
    let nameTaylor = "Taylor"
    let age = 26
    let message = "Hello, my name is \(nameTaylor) and I'm \(age) years old."
    print(message)
    
    let numberMessage = 11
    let missionMessage  = "Apollp \(numberMessage) landed on the moon."
    print(missionMessage)
    print("5 x 5 is \(5 * 5)")
    
    // Summary
    let celsius = 100.0
    let fahrenheit = convert_celsisu_to_fahrenheit(celsius: celsius);
    print(fahrenheit)
    let result_celsius = convert_fahrenheit_to_celsisu(fahrenheit: fahrenheit);
    print(result_celsius)
}

func convert_celsisu_to_fahrenheit(celsius: Double) -> Double {
    (celsius * 9.0) / 5.0 + 32.0
}

func convert_fahrenheit_to_celsisu(fahrenheit: Double) -> Double {
    (fahrenheit - 32.0) * 5.0 / 9.0
}
