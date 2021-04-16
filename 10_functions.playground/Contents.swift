import UIKit

var str = "Hello, playground"

func greeting(person: String) -> String {
    let greet = "¡Welcome, \(person)!"
    return greet
}

greeting(person: "Felipe Carrasco")
greeting(person: "Isabel")
greeting(person: "Luis")

// Parámetros de entrada3/16

func sayHelloWorld() -> String{
    return "hello world"
}

sayHelloWorld()
sayHelloWorld()
sayHelloWorld()

// con parametros

func greeting(person: String, isMale: Bool) -> String {
    if isMale{
        return "Bienvenido Caballero \(person)"
    }else{
        return "Bienvenida Señorita \(person)"
    }
}

greeting(person: "Felipe", isMale: true)
greeting(person: "Isabel", isMale: false)

// Challenge add new parameter age in the function and add some validation with this


func greetingPerson(person: String, isMale: Bool, age: UInt8) -> String {

    switch age {
    case 0..<18:
        return "Hola Bienvenid\(isMale ? "o" : "a") \(isMale ? "niño" : "niña") \(person)"
    case 18..<30:
        return "Hola Bienvenid\(isMale ? "o" : "a") joven \(person)"
    case 30...:
        return "Hola Bienvenid\(isMale ? "o" : "a") sr\(isMale ? ".":"a.") \(person)"
    default:
        return "Edad no puede ser menor a 0"
    }
}

print(greetingPerson(person: "Felipe", isMale: true, age: 28))
print(greetingPerson(person: "Enrique", isMale: true, age: 57))

// Valores de Retorno, Optionals y Parámetros de Salida

func greetTwo(person: String){
    print("Hola \(person)")
}

greetTwo(person: "Felipe")
greetTwo(person: "isabel")


// retorna el string.count
func printAndCount(string: String) -> Int{
    print(string)
    return string.count
}

// no devuelve nada
func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hola Mundo")
printWithoutCounting(string: "Hola Mundo")


func minMax(array:[Int]) -> (min: Int, max: Int)?{
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

// force unWrapping
let boundsOne = minMax(array: [23, 99, 44, 3, 6, 7, 8])

print("los valores se halla entre \(boundsOne!.min) y \(boundsOne!.max)")

// optional unwrapping
if let boundsTwo = minMax(array: [6, 4, 3, 1, 6, 5, 4, 7, 9]) {
    print("El valor minimo es \(boundsTwo.min) y el valor maximo es \(boundsTwo.max)")
}

minMax(array: [])


// Etiquetas de Params y Variadics

// f1 y f2 es un alias en el parametro de entrada.
//
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int){
    // firstParamName variable de tipo Int
    // secondParamName variable de tipo Int
    print(firstParamName + secondParamName)
}

someFunction(f1: 5, f2: 10)

func greeting(_ person: String, from hometown: String) -> String {
    return "Hola \(person) un place que nos visites desde \(hometown)"
}

greeting("Felipe", from: "Quilicura")


// valor de parametro por defecto

func someFunctionWithParamDefault(f1 firstParamName: Int, f2 secondParamName: Int = 6){
    // firstParamName variable de tipo Int
    // secondParamName variable de tipo Int
    print(firstParamName + secondParamName)
}

someFunctionWithParamDefault(f1: 5)

// variadic
/*
 A variadic parameter accepts zero or more values of a specified type. You use a variadic parameter to specify that the parameter can be passed a varying number of input values when the function is called. Write variadic parameters by inserting three period characters (...) after the parameter’s type name.
 **/
func mean(_ numbers: Double...) -> Double{
    var total : Double = 0
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

mean(1,2,3,4,5,6)
mean(1.5, 2.7)
mean(3, 4.5, 18.75)


// reto

func mediaGeometrica(_ numbers: Double...) -> Double{
    var total: Double = 1
    for number in numbers{
        total *= number
    }
    
    return pow(total, 1/Double(numbers.count))
}

print(mediaGeometrica(1.20, 1.15, 1.33, 1.25))


// Parámetros tipo inout

let x = 5
func addOne(number: Int){
    var number2 = number
    number2 += 1
    print("el numero ahora vale \(number)")
}

addOne(number: x)


func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}


var someInt = 3
var anotherInt = 7

print("someInt vale \(someInt) y anotherInt vale \(anotherInt)")
swapTwoInts(&someInt, &anotherInt)

print("someInt vale \(someInt) y anotherInt vale \(anotherInt)")


// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a+b
} // (Int, Int) -> Int

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a*b
}// (Int, Int) -> Int

func subtract(_ a: Int, _ b: Int) -> Int{
    return a-b
}

func printHW(){
    print("Hello world")
}// () -> Void

var mathFunction: (Int, Int) -> Int = multiplyTwoInts
mathFunction(4,5)

func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Resultado: \(mathFunc(a,b))")
}

printMathResult(multiplyTwoInts, 5, 9)
print("*********")
printMathResult(subtract, 3, 2)

/*
 apuntes
 **/

func addThreeInts(_ a: Int, _ b: Int, c: Int) -> Int {
    return a+b+c
}

func printMathResultThreeValues(_ mathOperation: (Int, Int, Int) -> Int, _ a: Int, _ b: Int,_ c: Int){
    print("Result: \(mathOperation(a, b, c))")
}

printMathResultThreeValues(addThreeInts, 2, 4, 6)


// refactor in Nested Function
func stepForward(_ input: Int) -> Int{
    return input + 1
}

func stepBackward(_ input: Int) -> Int{
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}



var value = -7

let moveNearer = chooseStepFunction(backward: value > 0)

while value != 0 {
    print("\(value)...")
    value = moveNearer(value)
}

print(value)
print("cero!!!")

print("*****************************+")
// Nested Functions

// Funciones anidadas: Una función está anidada cuando está definida dentro de otra
func chooseStepFunctionNested(backward: Bool) -> (Int) -> Int {// Función que devuelve una función
    func stepForward(_ input: Int) -> Int{// Función anidada
        return input + 1
    }

    func stepBackward(_ input: Int) -> Int{// Función anidada
        return input - 1
    }

    return backward ? stepBackward : stepForward
}


var valueNested = 7

let moveNearerZeroNested = chooseStepFunction(backward: valueNested > 0)// Esto tendrá como valor una función que acepta un entero y retorna un entero

while valueNested != 0 {
    print("\(valueNested)...")
    valueNested = moveNearerZeroNested(valueNested)// Por eso aquí al llamar esa variable, le mando un parámetro
}

print(valueNested)
print("cero!!!")
