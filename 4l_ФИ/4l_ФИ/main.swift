//
//  main.swift
//  4l_ФИ
//
//  Created by Дмитрий Золотенко on 02.12.2021.
//

import Foundation

    // MARK - enums

enum Transmission: String {
    case manual = "механическая"
    case auto = "автомат"
    case robot = "робот"
}

enum EngineState: String {
    case on = "запущен"
    case off = "выключен"
}

enum TrailerType: String {
    case tank = "Цистерна"
    case autoHauler = "Автоперевозчик"
    case refrigirator = "Холодильник"
    case semiTrailer = "Полуприцеп"
}

enum DriveSettings: String {
    case sport = "спортивный"
    case city = "городской"
    case drift = "дрифт"
    case drag = "драг-рейсинг"
}

    // MARK - classes

class Car {
    let brand: String
    let color: String
    let year: Int
    let km: Double
    let transmission: Transmission
    var engineState: EngineState

    func carAction() {
        engineState == .on ? print("\nДвигатель уже \(engineState.rawValue)") : print("\nДвигатель \(engineState.rawValue)")
    }

    init(brand: String, color: String, year: Int, km: Double, transmission: Transmission, engineState: EngineState) {
        self.brand = brand
        self.color = color
        self.year = year
        self.km = km
        self.transmission = transmission
        self.engineState = engineState
    }
}

class TrunkCar: Car {
    var trunkVolume: Double
    let trailerType: TrailerType

    override func carAction() {
        print("\nНаш грузовик \(brand) с типом прицепа: \(trailerType.rawValue) загружен, двигатель \(engineState.rawValue).")
    }

    init(brand: String, color: String, year: Int, km: Double, transmission: Transmission, engineState: EngineState, trunkVolume: Double, trailerType: TrailerType) {
        self.trunkVolume = trunkVolume
        self.trailerType = trailerType
        super.init(brand: brand, color: color, year: year, km: km, transmission: transmission, engineState: engineState)
    }
}

class SportCar: Car {
    let isSpoilerAvailible: Bool
    let driveSettings: DriveSettings

    override func carAction() {
        print("\nВаш спорткар \(brand) в \(driveSettings.rawValue) режиме, двигатель \(engineState.rawValue).")
    }

    init(brand: String, color: String, year: Int, km: Double, transmission: Transmission, engineState: EngineState, isSpoilerAvailible: Bool, driveSettings: DriveSettings) {
        self.isSpoilerAvailible = isSpoilerAvailible
        self.driveSettings = driveSettings
        super.init(brand: brand, color: color, year: year, km: km, transmission: transmission, engineState: engineState)
    }
}

    // MARK - create objects

var cityCar = Car(brand: "Skoda", color: "White", year: 2010, km: 250000, transmission: .auto, engineState: .off)
cityCar.carAction()
print("\nМарка машины: \(cityCar.brand)\nЦвет: \(cityCar.color)\nГод выпуска: \(cityCar.year)\nПробег: \(cityCar.km) км\nТип КПП: \(cityCar.transmission.rawValue)\nСтатус двигателя: \(cityCar.engineState.rawValue)")

var trunkCar = TrunkCar(brand: "MAN", color: "Silver", year: 2005, km: 390000, transmission: .robot, engineState: .on, trunkVolume: 8000, trailerType: .tank)
trunkCar.carAction()
print("\nМарка машины: \(trunkCar.brand)\nЦвет: \(trunkCar.color)\nГод выпуска: \(trunkCar.year)\nПробег: \(trunkCar.km) км\nТип КПП: \(trunkCar.transmission.rawValue)\nСтатус двигателя: \(trunkCar.engineState.rawValue)\nОбъем прицепа: \(trunkCar.trunkVolume)\nТип прицепа: \(trunkCar.trailerType.rawValue)")

var sportCar = SportCar(brand: "Nissan", color: "Black", year: 2020, km: 1, transmission: .manual, engineState: .on, isSpoilerAvailible: true, driveSettings: .drift)
sportCar.carAction()
print("\nМарка машины: \(sportCar.brand)\nЦвет: \(sportCar.color)\nГод выпуска: \(sportCar.year)\nПробег: \(sportCar.km) км\nТип КПП: \(sportCar.transmission.rawValue)\nСтатус двигателя: \(sportCar.engineState.rawValue)\nРежим Drive: \(sportCar.driveSettings.rawValue)")

