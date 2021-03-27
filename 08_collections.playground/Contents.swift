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

var shoppingList: [String] = ["papas", "pimientos", "tortillas", "choclo", "jalapeño"]
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

// acceder y modificar elementos array

if shoppingList.isEmpty {
    print("la lista de la compra está vacia")
}else{
    print("Mandamos a Felipe a Comprar")
}

shoppingList.append("Coca Cola")
shoppingList.count

// add more items.
shoppingList += ["Palta", "Tomate", "carne"]
shoppingList.count

// get first element
var firstElement = shoppingList[0]
shoppingList[0] = "Huevos" // update item by position

shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList
print(pepper)

let _ = shoppingList.removeLast()

for item in shoppingList {
    print(item)
}
print("********* \n")
for (idx, item) in shoppingList.enumerated() {
    print("\(idx + 1): \(item)")
}

// Reto
// List of Family

for item in familyNames {
    print(item)
}

// List Family with index
for (idx, item) in familyNames.enumerated() {
    print("\(idx + 1) : \(item)")
}



// Conjunto (Set)
// en los conjuntos no hay orden

var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters

var favoriteGames: Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]

favoriteGames.count

if favoriteGames.isEmpty {
    print("No hay Juegos Favoritos")
}else {
    print("Hay \(favoriteGames.count) juegos favoritos")
}

favoriteGames.insert("Metal Gear")

if let removedGame = favoriteGames.remove("Farcry"){
    print("He Eliminado de la lista \(removedGame)")
}else{
    print("No se ha podido elminar")
}

// validate if exists

if favoriteGames.contains("Metal Gear"){
    print("Me encanta ese Juego")
}

// without index
// sorted = sirve para ordenar
for vg in favoriteGames.sorted() {
    print(vg)
}

// iteration and operation about Set

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2,3,5,7]

// A union B = elementos que son o bien de A, o bien de B o de los dos.

oddDigits.union(evenDigits).sorted() // join A with B

// A intersección B = elementos que son a la vez de A y de B
// intersección es el conjunto de los elementos en común
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B = elementos que son de A pero no de B
// los que no son comunes, a diferencia de los intersección
oddDigits.subtracting(primeNumbers).sorted()

// A + B (A-B) union (B-A)
// los que no son comunes entre A y B
oddDigits.symmetricDifference(primeNumbers).sorted()

//
let farmAnimals: Set = ["🐶", "😹", "🐮", "🐔", "🐑"]
let houseAnimals: Set = [ "🐶", "😹"]

let cityAnimals: Set = ["🐁", "🕊"]

// subCOnjunto cuando el pequeño está dentro del grande
houseAnimals.isSubset(of: farmAnimals) // true = porque es un conjunto  más pequeño
farmAnimals.isSubset(of: houseAnimals) // false = porque es un conjunto mas grande

farmAnimals.isSuperset(of: houseAnimals) // es true porque es un conjunto más grande
houseAnimals.isSuperset(of: farmAnimals) // es false porque es un conjunto más pequeño
// A y B son disjunto si su intersección en vacía
farmAnimals.isDisjoint(with: cityAnimals)

// Reto.
// Create a Set of Foods you like and another with fruits or vegetables

let favouriteFood: Set = ["puré", "papás fritas", "pollo", "tallarines"]
let favouriteFruits: Set = ["naranja", "platano", "pera", "piña", "mango"]

// union
favouriteFruits.union(favouriteFruits).sorted()

// Intesection
favouriteFood.intersection(favouriteFruits).sorted()

// Subtracting
favouriteFood.subtracting(favouriteFruits).sorted()

// symmetricDifference
favouriteFood.symmetricDifference(favouriteFruits).sorted()

// isSubset
favouriteFood.isSubset(of: favouriteFruits)

// isSuperSet
favouriteFood.isSuperset(of: favouriteFruits)

// isDisjoint
favouriteFood.isDisjoint(with: favouriteFruits)


// Dictionary

// tiene clave  y valor (key: value) [k1:v1, k2:v2, ....]

var namesOfIntegers = [Int: String]()
namesOfIntegers[15] = "quince" // 15 es key y quince es valor
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"]


airports.count

if airports.isEmpty {
    print("there are not airports created")
}

airports["LHR"] = "London city Airport"
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("the airport had the old name of \(oldValue)")
}

airports

if let airportName = airports["DUB"]{
    print("El airport de dub es: \(airportName)")
}

airports["PMI"] = nil
airports

airports.removeValue(forKey: "DUB")
airports

if let removeAirport = airports.removeValue(forKey: "DUB"){
    print("the airport \(removeAirport) was removed ")
}

// Reto
// create a dictionary with name as key and age like value.

var familyNameDic: [String: Int] = ["Felipe": 28,
                                     "Isabel": 56,
                                     "Enrique": 57,
                                     "Nataly": 32,
                                     "Fernanda": 18
]
print("cantidad de familia: \(familyNameDic.count)")
let ageUser = familyNameDic["Felipe"] ?? 0
print(ageUser)
// declare empty Dictionary
var familyNameDicTwo: [String: Int8] = [:]

familyNameDicTwo["Felipe"] =  28
familyNameDicTwo["Isabel"] = 56
familyNameDicTwo["Enrique"] = 57
familyNameDicTwo["Nataly"] = 32
familyNameDicTwo["Fernanda"] = 18

print("cantidad de familia: \(familyNameDicTwo.count)")


