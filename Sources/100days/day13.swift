func day13() {
    print("day13")

    let car = DaviRainCar()
    commute(distance: 100, using: car)
    let bike = DaviRainBicycle()
    commute(distance: 100, using: bike)

    getTravelEstimates(using: [car, bike], distance: 150)

    print(getRandomNumber() == getRandomNumber())
}

protocol VehicleProtocol {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct DaviRainCar: VehicleProtocol {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        return distance / 50
    }

    func travel(distance: Int) {
        print("The car is traveling \(distance) kilometers.")
    }

    func openSunroof() {
        print("Opening sunroof...")
    }
}

func commute(distance: Int, using vehicel: VehicleProtocol) {
    if vehicel.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a differenc Vehicle.")
    } else {
        vehicel.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [VehicleProtocol], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) kilometers.")
    }
}

struct DaviRainBicycle: VehicleProtocol {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        return distance / 10
    }

    func travel(distance: Int) {
        print("The bicycle is traveling \(distance) kilometers.")
    }

    func ringBell() {
        print("Ring ring!")
    }
}

// any Equatable DONT WORK
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}
