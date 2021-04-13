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

// Valores de Retorno, Optionals y Parámetros de Salida

func greetTwo(person: String){
    print("Hola \(person)")
}

greetTwo(person: "Felipe")
greetTwo(person: "isabel")


// retorna el string.count
func printAndCount(string: String) -> Int{
    print(string)
    return string.count
}

// no devuelve nada
func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hola Mundo")
printWithoutCounting(string: "Hola Mundo")


func minMax(array:[Int]) -> (min: Int, max: Int)?{
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

// force unWrapping
let boundsOne = minMax(array: [23, 99, 44, 3, 6, 7, 8])

print("los valores se halla entre \(boundsOne!.min) y \(boundsOne!.max)")

// optional unwrapping
if let boundsTwo = minMax(array: [6, 4, 3, 1, 6, 5, 4, 7, 9]) {
    print("El valor minimo es \(boundsTwo.min) y el valor maximo es \(boundsTwo.max)")
}

minMax(array: [])
