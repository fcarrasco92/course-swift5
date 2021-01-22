import UIKit

let someString = "Soy un String cualquiera"

let multiLineString = """
    Soy Felipe Carrasco\
    Estoy haciendo el curso de programación en Swift\
:)
"""

print(someString)
print(multiLineString)

let wiseWords = "\" La imaginación es más importante que el saber\" - albert einstein"
 /**
 unicode table
 https://en.wikipedia.org/wiki/Basic_Latin_(Unicode_block)
 */
let dolarSign = "\u{24}" // simbolo de poker
let blackHeart = "\u{2665}" // simbolo corazón Negro
let heart = "\u{1F496}" // simbolo emoji corazón

// U+1F1E8, U+1F1F1
let flagChile = "\u{1F1E8}" + "\u{1F1F1}"
let name = "Felipe Carrasco"
let greeting = """
    Hi my name is \(name).
I am from \(flagChile).
Nice to meet you
"""

print(greeting)

var emptyString = "" // String vacio
var anotherEmptyString = String() // String vacio, Inicializado

if emptyString.isEmpty {
    print("nada que ver")
}else{
    print("El string tiene un valor")
}

var newSomeString = "un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

let aString = "Juan Gabriela"
// aString = " y Ricardo solis" //  tira un error porque es una constante y en inmutable.

var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b)")
b = a
print("a vale \(a) y b vale \(b)")
b = "C"
print("a vale \(a) y b vale \(b)")
a = "D"
print("a vale \(a) y b vale \(b)")


// characters

let myName = "Felipe Carrasco"

for character in myName{
    print(character)
}

print(myName.count)

let exclamationMark : Character = "!"

let nameChars: [Character] = ["F","E", "L","I","P","E"]
var nameString = String(nameChars)

let compoundName = "Felipe " + " Carrasco"

// nameString += exclamationMark --> show error, because are differents type there are two solution cast with String(exclamationMark) or use append
// solution 1: nameString += String(exclamationMark)
nameString.append(exclamationMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 es \(Double(multiplier) * 3.5 )"
message.append(exclamationMark)
print(message)


// reto 1: crear array character con mi nombre
// reto 2: imprimir la tabla de multiplcar

// reto 1
let nameCompleteChar: [Character] = ["F","e","l","i","p","e"]
let nameCompleteString = String(nameCompleteChar)
print(nameCompleteString)

// reto 2

let multiplierTable:UInt8 = 5
for index in 1...10 {
    print("\(multiplierTable) x 1 = \(multiplierTable * UInt8(index))")
}
