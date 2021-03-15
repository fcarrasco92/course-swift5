import UIKit

// las colecciones se dividen en 3:
// ARRAY
// CONJUNTO
// DICCIONARIOS

// cualquier collection puede ser mutable o inmutable.
// inmutable significa que no puedes modificarlo.

/* ARRAY */
// crear un ARRAY vacio

var someInts = [Int]() // -> crear un array vacio con Tipo de dato.
someInts.count
someInts.append(28)
someInts.count
// declarar un array o vaciar el array.
someInts = []
someInts.count // 0

// otra forma de declarar
var someDoubles = Array(repeating: 3.141592, count: 7)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 3)

// crear otro array concatenando otros.
var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

// otra forma de crear array

var shoppingList: [String] = ["papas", "pimientos", "tortillas", "choclo"]
shoppingList.count

// RETO - crear un array con los nombres de mi familia.

// Form 1
var familyNames = [String]()
familyNames.append("Felipe")
familyNames.append("Isabel")
familyNames.append("Fernanda")
familyNames.append("Luis")
familyNames.append("Nataly")
familyNames.append("Ignacio")
familyNames.append("Vicente")

print(familyNames.count)

// Form 2
var familyNamesTwo = ["Felipe", "Isabel", "Fernanda", "Luis", "Nataly", "Ignacio", "Vicente"]

print(familyNamesTwo.count)
