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


// Optional Nil
let possibleAge = "27"
let convertAge = Int(possibleAge) // Int?

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?
surveyAnswer = "42"


// Force unwrapping de una variable optional
// print(surveyAnswer!) is dangerous

if convertAge != nil {
    print("la edad del usuario no es null: \(convertAge!)")
}else{
    print("la edad del usuario es null: ")
}

// Optional Binding

if let actualNumber = surveyAnswer {
    // al llegar aquí, surveyAnswer != nil
    print("El String \(surveyAnswer) tiene el valor \(actualNumber)")
} else{
    // al llegar aquí, surveyAnswer = nil
    print("El String \(surveyAnswer) es nil ...")
}

if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100")
}


// Unwrap Implícito

let possibleString: String?  = "Un String opcional"
let forcedString: String = possibleString!

let assumedString: String! = "Un String unwrapped de forma implicita a partir de un opcional."

let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definitiveString = assumedString {
    print(definitiveString)
}

print(assumedString)
