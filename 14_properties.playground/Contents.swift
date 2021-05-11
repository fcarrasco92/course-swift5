import UIKit

// Stored properties

struct FixedLengthRange {
    var firstValue: Int
    var length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)


rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)


// rangeOfFourItems.length = 5 // Cannot assign to property: 'rangeOfFourItems' is a 'let' constant


// Lazy Stored Properties


class DataImporter {
    var fileName = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()

manager.data.append("Algo de datos")
manager.data.append("mas datos")
// hasta esta linea, el importer no ha sido creado...
manager.importer.fileName
// aquí la variable importer ha sido creado


// Computed Properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        // MODO NOVATO
        /*get{
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.width / 2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.width / 2
        }*/
        // MODO PROFESIONAL
        get{
            Point(x: origin.x + size.width / 2, y: origin.y + size.width / 2)
        }
        set{
            origin.x = newValue.x - size.width / 2
            origin.y = newValue.y - size.width / 2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center

let initalSquareCenter = square.center

square.center = Point(x: 20, y: 20)

// Computed Properties de sólo lectura

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    
    var volume: Double {
            return width * height * depth
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)

cuboid.volume

// cuboid.volume = 57.0 launch error puesto que la variable es solo de lectura.


// Challenge create a struct person
enum Languague {
    case Spanish, English, French
}

enum Gender {
    case male, female
}

struct Person {
    var name: String
}

struct Greeting{
    var person: Person
    var languague: Languague
    var gender: Gender
    var languagueGreeting: String {
        switch self.languague {
        case .Spanish:
            return "Hola"
        case .English:
            return "Hello"
        case .French:
            return "Salut"
        }
    }
    
    var abbreviations: String{
        switch self.gender {
        case .male:
            return "\(languagueGreeting) Mr. \(person.name)"
        case .female:
            return "\(languagueGreeting) Mrs. \(person.name)"

        }
    }
}

let person = Person(name: "Felipe")
let welcomeGreeting = Greeting(person: person, languague: .English, gender: .male)

print(welcomeGreeting.abbreviations)
