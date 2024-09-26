import Foundation

//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.


enum BrandSportCar {
    case ferrari
    case lamborghini
    case mclaren
    case bugatti
    case pagani
}

enum BrandPassengerCar {
    case audi
    case skoda
    case lada
    case kia
    case mercedes
}

enum BrandTrunkCar {
    case kamaz
    case volvo
    case man
    case iveco
    case daf
}

enum BrandMotorcycle {
    case suzuki
    case ducati
    case harley
    case honda
    case yamaha
}

enum DoorState {
    case open
    case close
}

enum EngineState {
    case on
    case off
}

enum WindowsState {
    case open
    case close
}

struct SportCar {
    let brand: BrandSportCar
    var year: Int
    var trunkVolume: Double
    var luggage: Double
    var doorState: DoorState
    var engineState: EngineState

    var filledVolume: String {
        get {
            let filled = (trunkVolume - luggage)/(trunkVolume/100)
            return "Багажник заполнен на \(100 - filled)%, свободно \(filled)%"
        }
    }

    mutating func closeDoor() {
        if self.doorState == .open {
            self.doorState = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if self.doorState == .close {
            self.doorState = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func onOffEngine() {
        switch self.engineState {
        case .on:
            self.engineState = .off
            print("Двигатель заглушен")
        case .off:
            self.engineState = .on
            print("Двигатель запущен")
        }
    }

}

struct PassengerCar {
    let brand: BrandPassengerCar
    var year: Int
    var trunkVolume: Double
    var luggage: Double
    var doorState: DoorState
    var engineState: EngineState
    var windowsState: WindowsState

    var filledVolume: String {
        get {
            let filled = (trunkVolume - luggage)/(trunkVolume/100)
            return "Багажник заполнен на \(100 - filled)%, свободно \(filled)%"
        }
    }

    mutating func closeDoor() {
        if self.doorState == .open {
            self.doorState = .close
            print("Двери закрыты")
        } else {
            print("Двери уже закрыты")
        }
    }

    mutating func openDoor() {
        if self.doorState == .close {
            self.doorState = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func onOffEngine() {
        switch self.engineState {
        case .on:
            self.engineState = .off
            print("Двигатель заглушен")
        case .off:
            self.engineState = .on
            print("Двигатель запущен")
        }
    }

    mutating func openCloseWindows() {
        switch self.windowsState {
        case .open:
            self.windowsState = .close
            print("Окна закрыты")
        case .close:
            self.windowsState = .open
            print("Окна открыты")
        }
    }

}

struct TrunkCar {
    let brand: BrandTrunkCar
    var year: Int
    var trunkVolume: Double
    var luggage: Double
    var doorState: DoorState
    var engineState: EngineState
    var windowsState: WindowsState

    var filledVolume: String {
        get {
            let filled = (trunkVolume - luggage)/(trunkVolume/100)
            return "Багажник заполнен на \(100 - filled)%, свободно \(filled)%"
        }
    }

    mutating func openDoor() {
        if self.doorState == .close {
            self.doorState = .open
            print("Двери открыты")
        } else {
            print("Двери уже открыты")
        }
    }

    mutating func onOffEngine() {
        switch self.engineState {
        case .on:
            self.engineState = .off
            print("Двигатель заглушен")
        case .off:
            self.engineState = .on
            print("Двигатель запущен")
        }
    }

    mutating func openCloseWindows() {
        switch self.windowsState {
        case .open:
            self.windowsState = .close
            print("Окна закрыты")
        case .close:
            self.windowsState = .open
            print("Окна открыты")
        }
    }

}

struct Motorcycle {
    let brand: BrandMotorcycle
    var year: Int
    var engineState: EngineState

    mutating func onOffEngine() {
        switch self.engineState {
        case .on:
            self.engineState = .off
            print("Двигатель заглушен")
        case .off:
            self.engineState = .on
            print("Двигатель запущен")
        }
    }
}

var sportCar1 = SportCar(brand: .bugatti, year: 2011, trunkVolume: 100, luggage: 90, doorState: .close, engineState: .off)

sportCar1.closeDoor()
sportCar1.openDoor()
sportCar1.onOffEngine()
print("\nСпорткар марки: \(sportCar1.brand)\nГод выпуска: \(sportCar1.year)\nОбъем багажника: \(sportCar1.trunkVolume)\n\(sportCar1.filledVolume)\nСостояние двигателя: \(sportCar1.engineState)\n")

var passengerCar1 = PassengerCar(brand: .audi, year: 1999, trunkVolume: 400, luggage: 100, doorState: .open, engineState: .on, windowsState: .open)

passengerCar1.openCloseWindows()
print("\nЛегковой автомобиль марки: \(passengerCar1.brand)\nГод выпуска: \(passengerCar1.year)\nОбъем багажника: \(passengerCar1.trunkVolume)\n\(passengerCar1.filledVolume)\nСостояние двигателя: \(passengerCar1.engineState)\n")

var trunkCar1 = TrunkCar(brand: .kamaz, year: 2005, trunkVolume: 2000, luggage: 700, doorState: .close, engineState: .off, windowsState: .close)

trunkCar1.openCloseWindows()
trunkCar1.onOffEngine()
print("\nГрузовой автомобиль марки: \(trunkCar1.brand)\nГод выпуска: \(trunkCar1.year)\nОбъем багажника: \(trunkCar1.trunkVolume)\n\(trunkCar1.filledVolume)\nСостояние двигателя: \(trunkCar1.engineState)\n")

var motorcycle = Motorcycle(brand: .ducati, year: 2001, engineState: .off)
motorcycle.onOffEngine()

print("\nМотоцикл марки: \(motorcycle.brand)\nГод выпуска: \(motorcycle.year)\nСостояние двигателя: \(motorcycle.engineState)")
