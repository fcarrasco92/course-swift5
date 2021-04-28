import UIKit

// Struct vs Class

// class tiene herencia, casting, desinicializador, reference counting
//


struct SomeStruct {
    // la definicion de la estructura aquí
    
}

class SomeClass {
    // la definición de la clase aquí
}

// ejemplo como usar struct and class


struct Resolution {
    var width = 0
    var height = 0
    
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
}

// instanciar class y struct
let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

// no se puede asignar ya que someResolution es un constante.
//someResolution.width = 1280

someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)
