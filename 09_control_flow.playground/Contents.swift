import UIKit

let names = ["Ricardo Celis", "Juan Gabriel", "Felipe"]

for name in names {
    print("Hola \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "dog": 4]

for (animalName, legCount) in numberOfLegs{
    print("Animal: \(animalName), numero de patas: \(legCount)")
}

// inclusivo
for idx in 1...5{
    print("\(idx) x 3 = \(idx * 3) ")
}

//
let base = 2
let power = 10
var answer = 1

// _ si no utilizaremos la variable
for _ in 1..<power {
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
for tickMark in 0..<minutes{
    print("\(hour) : \(tickMark)")
}
print("********")
let minuteInterval = 5
// for in range
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print("\(hour) : \(tickMark)")
}


// Reto
// contar horas del dias partiendo desde 0 hasta 24, solo marque cada 3

let initialTime = 0
let endTime = 24
let intervalTime = 3
var timeCount = 0

print("*********")
for tickMark in stride(from: initialTime, to: endTime, by: intervalTime) {
    print("Hour: \(tickMark):00")
}

// Bucle While

var i = 0
while i <= 10 {
    i += 1
    print("i: \(i)")
}

print("i after while: \(i)")

// execute at least one times
repeat  {
    i += 1
} while i <= 10

print("i => \(i)")

// reto
// validate 100 numbers and identify which are prime numbers

func isPrime(n : UInt64) -> Bool {
    if n == 0 { return false }
    if n == 1 { return false }
    var found = false
    var min: UInt64 = 2 // Primer posible divisor
    let max: UInt64 = UInt64(n / 2) // Matematicamente esta demostrado que si no existe hasta n / 2 no existe divisor \LOL

    while min <= max && !found {
        found = n % min != 0
        min += 1
    }
    
    return found
}

for n in 0...100 {
    if isPrime(n: UInt64(n)) {
        print("\(n)", terminator: " ")
    }
}

// uso de If y Else

print("*******")
var temp = 20

if temp <= 15 { // temp <= 15
    print("Hace frio! enciende la calefacción")
}else if  temp >= 25 { // temp > 15
    print("hace calor! encendamos el aire acondicionado")
}else{ // 15 < temp < 25
    print("la sensación termica es agradable. no hace falta modificar")
}


// Reto
// use if else for the validation of the amount of money you can lend

var money: Int = 20000 // CLP

if money > 0 && money <= 10000 {
    print("I can lend money")
}else if money > 10000 && money < 30000 {
    print("I can lend money without problem")
}else if money > 30000 && money < 50000 {
    print("I can lend you, but no all amount")
}else{
    print("exist the possibility we can lost frienship 🤣")
}

// switch case

let someCharacter: Character = "A"

switch someCharacter {
case "a", "A":
   print("the first letter in alphabet")
case "z", "Z":
    print("the last letter in alphebet")
default:
    print("is some another letter")
}

// Reto
// validate with switch case if is vocal or not

let someCharacterTest: Character =  "z"

switch someCharacterTest.lowercased() {
case "a", "e", "i", "o", "u":
    print("it's vowel")
default:
    print("it's not vowel")
}

// Switch usando rangos - Interval matching

let moons = 8392832
let phrase = "lunas en Saturno"
let naturalCount: String

switch moons {
    case 0:
        naturalCount = "No hay"
    case 1..<5:
        naturalCount = "Hay unas pocas"
    case 5..<12:
        naturalCount = "Hay bastantes"

    case 12..<100:
        naturalCount = "Hay decenas de "
    case 100..<1000:
        naturalCount = "Hay centenares de"
    default:
        naturalCount = "Hay muchisimas lunas"
}

print("\(naturalCount) \(phrase)")

// reto
// use switch for the validation of the amount of money you can lend

let moneyToBorrow: Int = 250000 // CLP
var message: String = ""
switch moneyToBorrow {
    case 0..<10000:
        message = "Take the money, no problem"
    case 10000..<30000:
        message = "I can lend the money, but I will need soon"
    case 3000..<50000:
        message = "it's a lot of money, I don't have that amount"
    default:
        message = "I'm sorry it's a lot money"
}

print("message: \(message)")

// SWITCH using TUPLAS

let somePoint = (5,-8)
switch somePoint {
    case (0,0):
        print("el punto \(somePoint) es el origen de coordenadas")
    case (_, 0):
        print("el punto \(somePoint) se halla sobre el eje de las X")
    case (0, _):
        print("el punto \(somePoint) se halla sobre el eje de las Y ")
    case (-2...2, -2...2):
        print("El punto \(somePoint) se halla en el interior del cuadrado de lado 4")
    default:
        print("El punto \(somePoint) está en algún otro lado")
}


let anotherPoint = (2,2)
switch anotherPoint {
    case (let x, 0):
        print("Sobre el eje de las X, con valor \(x)")
    case (0, let y):
        print("sobre el eje de las Y, con valor \(y)")
    case let (x,y) where x == y:
        print("El punto se halla sobre la recta x = y")
    case let (x,y) where x == -y:
        print("El punto se halla sobre la recta x = -y")
    case let (x,y):
        print("En algún otro lugar del plano, en (\(x)), (\(y))")
        
}

// Switch compuestos

let anotherCharacter: Character = "e"

switch anotherCharacter {
    case "a","e","i","o","u":
        print("Se trata de una vocal")
    case "A"..."Z", "a"..."z": // TODO: acabar con el resto del abecedario
        print("consonantes")
    
    default:
        print("se trata de un caracter no vocal ni consonante (minuscula)")
}


let stillAnotherPoint = (9,0)

switch stillAnotherPoint {
    case (let distance, 0), (0, let distance):
        print("Se halla sobre el eje, a distancia \(distance) del origen")
    default:
        print("No está sobre el eje")
}

// Reto uso de Switch

let deliveryState: (estado: String, horario: String, distancia: Int) = ("Entregado", "A tiempo", 49 )
let status: String

// Reto
switch deliveryState {
case ("Entregado", "A tiempo", 0..<50):
    status = "El pedido ha sido \(deliveryState.estado) a tiempo y cerca al punto GPS registrado"
case ("Entregado", "Retrasado", 0..<50):
    status = "El pedido ha sido entregado con retraso y cerca al punto GPS registrado"
case ("Pendiente",_, _):
    status = "El pedido todavia no a sido entregado"
case ("Entregado", "A tiempo", 50...100):
    status = "El pedido a sido entregado a tiempo, lejano al punto GPS registrado"
case ("Entregado", "Retrasado", 50...100):
    status = "El pedido a sido entregado con retraso, lejano al punto GPS registrado"
default:
    status = "Por favor ponerse en contacto con nuestros operadores"
}

print(status)


let studentStatus: (UInt8,Bool) = (100,true)

switch studentStatus {
case (0..<70, _):
    print("alumno reprobado")
case (_, false):
    print("alumno dado de baja por falta de pago")
case (70..<80, true):
    print("alumno con matricula pagada y calificacion aprobatoria: \(studentStatus.0) con descuento de 10% por calificacion")
case (80..<90, true):
    print("alumno con matricula pagada y calificacion aprobatoria: \(studentStatus.0) con descuento de 20% por calificacion")
case (90..<100, true):
    print("alumno con matricula pagada y calificacion aprobatoria: \(studentStatus.0) con descuento de 30% por calificacion")
case (100, true):
    print("alumno con matricula pagada y calificacion aprobatoria: \(studentStatus.0) con descuento de 40% por calificacion y mención honorifica")
default:
    print("Error al capturar la calificacion")
}
