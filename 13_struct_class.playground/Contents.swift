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



// Struct datos copiados
// struct = copias, tienen su propio espacio de memoria
// class = referencias, apuntan a un espacio de memoria

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048

print("cinema = \(cinema.width) x \(cinema.height)")
print("hd = \(hd.width) x \(hd.height)")


enum CompassPoint{
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)

// cuando realizamos la copia de un struct o de un enum, toman espacios de memoria independientes.

//Clases: datos referenciados

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEigthy = tenEighty

alsoTenEigthy.frameRate = 30.0

tenEighty

if tenEighty === alsoTenEigthy { // !== no identico
    print("Son el mismo objeto")
}else{
    print("NO son el mismo objeto")
}
