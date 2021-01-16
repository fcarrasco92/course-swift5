import UIKit

// Operation and arithmetics
// elementos unarios
// binario

// operación de asignación
let b = 10
var a = 5
a = b

// tuplas
let (x,y) = (1,2)


if a == b {
    print("Loa valores de a y b son iguales")
}

1 + 2
5 - 3
2 * 3
10.0 / 2.5

// esto concatena, no suma
"Hello " + " world"

// D/d -> D == d*c+4
9 / 4 // c
9 % 4 // r
9 == 4*2+1

-9%4 // -9 == -2*4 + (-1)

// operador unario: es ek cambio de signo
let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 // number = number + 3
number -= 2 // number = number - 2

print(number) // 6

// reto

var numberTest = 4
print("declare variable: \(numberTest)")
numberTest += 3
print("result Addition 3 to variable numberTest = \(numberTest)")
numberTest -= 2
print("result Subtraction 2 to variable numberTest = \(numberTest)")
numberTest *= 2
print("result Multiplication 2 to variable numberTest = \(numberTest)")
numberTest /= 3
print("result Division 3 to variable numberTest = \(numberTest)")
numberTest %= 2
print("result % 2 to variable numberTest = \(numberTest)")


// comparaciones
// == igual que
1 == 1 // TRUE
1 == 2 // FALSE
// != DIFERENTE QUE
1 != 2 // TRUE

// MAYOR QUE
2 > 1 // TRUE
1 > 2 // FALSE

// MENOR QUE
1 < 2 // TRUE
2 < 1 // FALSE

// MAYOR IGUAL QUE
2 >= 1 // TRUE
1 >= 1 // TRUE

// MENOR IGUAL QUE
2 <= 1 // FALSE
1 <= 2 // TRUE

let name = "Juan Gabriel"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado a la fiesta ")
}else{
    print ("Cuidado, ha aparecido un \(name) salvaje")
}

// la validación de tuplas comienza de izquierda a derecha.
// luego por ejemplo primero el numero, en el caso de corresponder toma el segundo valor de la
// tupla
(1, "Juan Gabriel") < (2, "Ricardo Celis") // true
(3, "Juan Gabriel") < (3, "Ricardo Celis") // true -> porque compara 3 , luego valida los nombres y J(Juan Gabriel) es menor que R(Ricardo Celis)
(3, "Ricardo Celis") < (3, "Juan Gabriel") // false -> porque compara 3, luego valida los nombres y R no es menor J, por ende es false
(3, "Ricardo") < (3, "Juan Gabriel") // false
(4, "perro") == (4, "perro")

// Los booleanos no se pueden validar con Mayor o menor
//("perro", false) < ("perro", true)
 
// Reto: crear una tupla con la edad de  José Miguel vs Felipe Carrasco
(28, "Felipe Carrasco") < (31, "Juan Gabriel") // true --> por Felipe es menor que Juan
(28, "Felipe Carrasco") > (31, "Juan Gabriel") // false --> porque Juan  es mayor que Felipe
(28, "Felipe Carrasco") == (31, "Juan Gabriel") // false --> porque la edad ambos es diferente
(28, "Felipe Carrasco") != (31, "Juan Gabriel") // true --> porque la edad de ambos es diferente


/*
 sintaxi:
 if question {
    answer1
 }else{
    answer2
 }
 */

let contentHeight = 40
var hasImage = true
var rowHeight = 0

// asignación basica
if hasImage {
    rowHeight = contentHeight + 50
}else{
    rowHeight = contentHeight + 10
}

// operador ternario
rowHeight = contentHeight + (hasImage ? 50 : 10)
print(rowHeight)

// operador ternario example for  age enter to discoteque
let age = 17

var message = age >= 10 ? "You can enter to the party" : "You cannot enter to the party"
print(message)



// Operador Nil Coalescing
let defaultAge = 18
var userAge: Int?

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge!: defaultAge)

let defaultColorName = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColorName

// Reto: crear una variable usuario, si no existe dejar un valor por default.

let defaultUserName = "Anonymous"
var userName: String?
userName = "Felipe Carrasco"
var userNameToBeUse = userName ?? defaultUserName
print("the user connected is \(userNameToBeUse)")

// range o Rangos

// rango cerrado
for idx in 1...5 {
    print(idx)
}

// rango semi abierto
for idx in 1..<5 {
    print(idx)
}

let names = ["Ricardo", "Felipe", "José", "Pepe"]

for i in 0..<names.count {
    print("la persona \(i+1) se llama \(names[i])")
}
print("*************************+")
for name in names[1...] {
    print(name)
}

print("********* tomar hasta la posición 2 pero comienza del 0 osea posición 3")

for name in names[...2] {
    print(name)
}

print("********* tomar hasta la posición 1 pero comienza del 0 osea posición 2")

for name in names[..<2] {
    print(name)
}

let range = ...5 // -infinity...5
range.contains(7)
range.contains(4)
range.contains(-2)
// apuntes

let numberOne = 10
let numberTwo = 20

// Toma del primer valor hasta el último
let rangeOne = numberOne...numberTwo
print(rangeOne)

// Excluye el último valor
let rangeTwo = numberOne..<numberTwo
rangeTwo.contains(20)

// llega al ultimo independiente del primero
let rangeThree = ...numberTwo

//Toma el primer valor hasta el +infinito
let rangeFour = numberOne...
rangeFour.contains(40)

