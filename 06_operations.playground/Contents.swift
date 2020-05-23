import UIKit

// Operation

// case 1.-
let b = 10
var a = 5
a = b

let (x,y) = (1,2)

// == es para comparar

if a == b {
    print("los valores \(a) y \(b) son iguales")
}


1+2
5-3
2*3
10.0/2.5

// concatenar
"Hello" + "World"

//D/d -> D == d*c+r
9.0/4.0 // c
9%4 // r

9 == 4*2+1

-9%4 // -9 === -2*4*(-1)

// Operador Unario
let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 // number = number + 3
number -= 2 // number = number - 2

var multiplication = 3
multiplication *= 2
multiplication *= -2
 
var division = 10
division /= 2

// comparación

// igual
1 == 1
1 == 2
// desigual
1 != 2
1 != 1

// mayor menor
2 > 1
1 > 2
2 < 1
1 < 2

2 >= 1
1 >= 1

2 <= 1


let name = "Felipe Carrasco"

if name == "Juan Gabriel" {
    print("Bienvenido  \(name)")
}else {
    print("No eres bienvenido  \(name)")
}

(1, "Felipe Carrasco") < (2, "Juan Soto") // true
(3, "Felipe Carrasco") < (3, "Roberto Soto") // true --> porque evalua la posición en el alfabeto de la primera letra F < R
(3, "Roberto Soto") < (3, "Felipe Carrasco") // false -->
(4, "perro") == (4, "perro") // true

//(4, true) < (4, false) // no se puede ya que false o true no tiene un orden

// Retor

(27, "Felipe Carrasco") < (31, "Juan Gabriel") // true
(27, "Felipe Carrasco") == (31, "Juan Gabriel") // false
(27, "Felipe Carrasco") > (31, "Juan Gabriel") // false

// operador ternario
//    explicacion sin ternario
//    if question {
//        answer1
//    }else{
//        answer2
//    }


let contentHigh = 40
var hasImage = true
var rowHigh = 0

 // version sin ternario
 if hasImage {
    rowHigh = contentHigh + 50
}else {
    rowHigh = contentHigh + 10
}

// operador ternario
rowHigh = contentHigh + (hasImage ? 50 : 10)
print(rowHigh)
