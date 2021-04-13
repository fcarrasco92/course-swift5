import UIKit

var str = "Hello, playground"

func greeting(person: String) -> String {
    let greet = "¡Welcome, \(person)!"
    return greet
}

greeting(person: "Felipe Carrasco")
greeting(person: "Isabel")
greeting(person: "Luis")

// Parámetros de entrada3/16

func sayHelloWorld() -> String{
    return "hello world"
}

sayHelloWorld()
sayHelloWorld()
sayHelloWorld()

// con parametros

func greeting(person: String, isMale: Bool) -> String {
    if isMale{
        return "Bienvenido Caballero \(person)"
    }else{
        return "Bienvenida Señorita \(person)"
    }
}

greeting(person: "Felipe", isMale: true)
greeting(person: "Isabel", isMale: false)

// Challenge add new parameter age in the function and add some validation with this


func greetingPerson(person: String, isMale: Bool, age: UInt8) -> String {

    switch age {
    case 0..<18:
        return "Hola Bienvenid\(isMale ? "o" : "a") \(isMale ? "niño" : "niña") \(person)"
    case 18..<30:
        return "Hola Bienvenid\(isMale ? "o" : "a") joven \(person)"
    case 30...:
        return "Hola Bienvenid\(isMale ? "o" : "a") sr\(isMale ? ".":"a.") \(person)"
    default:
        return "Edad no puede ser menor a 0"
    }
}

print(greetingPerson(person: "Felipe", isMale: true, age: 28))
print(greetingPerson(person: "Enrique", isMale: true, age: 57))
