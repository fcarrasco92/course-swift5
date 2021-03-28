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
