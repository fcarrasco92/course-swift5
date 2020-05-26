import UIKit

// String

// String literal
let someString = "I am a String literal"
let multiLineString = """
 Hola Soy Felipe Carrasco,\
 estoy haciendo el curso de Swift.\
 Bendiciones
"""
print(multiLineString)

let wiseWords = "\"La imaginación es más importante que el saber\" - Albert Einstein"
print(wiseWords)
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heartEmoji = "\u{1F496}"
let flagChile = "\u{1F1E8}\u{1F1F1}"

let name = "Felipe Carrasco"

print("My name is \(name), I am from \(flagChile)")

// Inicialización Y mutabilidad

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("variable vacia")
}else{
    print("variable tiene valor")
}

var newSomeString = "un caballo"
newSomeString += "y un carruaje"
newSomeString += "y un soldado"

// let es inmutable
//let aString = "Felipe Carrasco"
//aString += "manuel"

var a = "A"
var b = "B"
print("la A vale \(a) y la B vale \(b) ")
b = a
print("la A vale \(a) y la B vale \(b) ")
b = "C"
print("la A vale \(a) y la B vale \(b) ")
a = "D"
print("la A vale \(a) y la B vale \(b) ")

// Character

let nameUser = "Felipe Carrasco"

for character in nameUser {
    print(character)
}
print(name.count)

let exclamationMark: Character = "!"

let nameChars: [Character] = ["F", "e", "l", "i", "p", "e"]
var nameString = String(nameChars)

let compoundName = "Felipe " + "Carrasco"

//nameString + String(exclamationMark)
nameString.append(exclamationMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark)
print(message)

let multiplicarTabla = 3
for i in 0...10{
    print("\(multiplicarTabla) * \(i) = \(i * multiplicarTabla)")
}
