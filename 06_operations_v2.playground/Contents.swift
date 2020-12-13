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


