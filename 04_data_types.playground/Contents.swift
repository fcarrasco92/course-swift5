import UIKit

let orangesAreOrange = true
let foodIsDeliciuos = false

var isAged: Bool

isAged = true

if isAged { // only can enter here, if isAged == true
    print("puedes entrar a la fiesta")
}else{ // only can enter here, is isAged == false
    print("no puedes entrar a la fiesta!")
}

var age: UInt8 = 17

if age >= 18 {
    print("puedes entrar a la fiesta")
}else{
    print("no puedes entrar a la fiesta!")
}


// TUPLAS
let http404Error = (404, "page not found")
let (statusCode, statusMessage) = http404Error

print("status code is: \(statusCode)")
print("message server is: \(statusMessage)")

let (justStatusCode, _) = http404Error

print("status code 2 is: \(justStatusCode)")

print("without variable: status code is \(http404Error.0) and the message \(http404Error.1)")

let http200Status = (statusCode: 200, statusMessage: "OK")
print("El código de estado es \(http200Status.statusCode) y el mensaje es:  \(http200Status.statusMessage)")

let informationPersonal = (name: "Felipe", lastName: "Carrasco", age: 27)

print("Hi, my name is \(informationPersonal.name + " " + informationPersonal.lastName) and I am \(informationPersonal.age) years old")
