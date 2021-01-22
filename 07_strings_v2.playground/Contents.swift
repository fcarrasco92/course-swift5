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


// learn INDEX in String

let greetingMessage = "Hola, ¿que tal?"
greetingMessage[greetingMessage.startIndex]
//greetingMessage[greetingMessage.endIndex] it's not possible
// take the last index
greetingMessage[greetingMessage.index(before: greetingMessage.endIndex)]
greetingMessage[greetingMessage.index(after: greetingMessage.startIndex)]

// recorrer greetingMessage con un FOR
for idx in greetingMessage.indices {
    print("\(greetingMessage[idx])", terminator: "")
}

var welcome = "hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex ))
print(welcome)

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex

welcome.removeSubrange(range)


// learn SubString

greetingMessage
let index = greetingMessage.firstIndex(of: ",") ?? greetingMessage.endIndex
print(index)
let firstPart = greetingMessage[..<index]
print(firstPart)

let newString = String(firstPart)
print(newString)

// learn prefix and suffix

let newGreeting = "Hola, soy Felipe Carrasco"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("Adios")
newGreeting.hasSuffix("o")

let collection = [
    "Act 1 Scene 1",
    "Act 1 Scene 2",
    "Act 1 Scene 3",
    "Act 1 Scene 4",
    "Act 1 Scene 5",
    "Act 2 Scene 1",
    "Act 2 Scene 2",
    "Act 2 Scene 3",
    "Act 3 Scene 1",
    "Act 3 Scene 2",
]

var act1SceneCount = 0

for scene in collection {
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print(" El numero de escenas del acto 1 \(act1SceneCount)")

// resumen es similar al contains, a diferencia que está busca dentro de la primera (prefix), con suffix busca si está dentro la de ultima palabra o letra de la frase.




// representaciones UNICODE

// Unicode es el estándar de codificación de caracteres compatible con cualquier dispositivo e idioma.

let ghost = "¡¡fantasma!!  👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}
print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}
