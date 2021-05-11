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
