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

