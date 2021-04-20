import UIKit

// 1. Global functions
// 2. Nested functions -> pueden tomar o capturar valores de las function global que la rodea.
// 3. Closure -> es una función que no tiene nombre escrito en una sintaxis mas lijera.

let names = ["Christian", "Ricard", "Edgar", "Felipe", "Luis"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward("Alberto", "Felipe")

var reversedNames = names.sorted(by:backward)

/**
Closure structure
 { (params)  -> return type in
    // code closure
 
 }
 */

// diferentes Clousure para ordenar 
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 })
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
reversedNames = names.sorted(by: { $0>$1 })
reversedNames = names.sorted(by: >)

// Trailing Closures

func someFunctionThatTakesAClosure(closure: () -> Void){
    // aquí va el cuerpo de la función
    
}

someFunctionThatTakesAClosure(closure: {
    // aquí iria el cuerpo del closure
})

someFunctionThatTakesAClosure {
    // añadir el closure aquí
}

reversedNames = names.sorted{ $0>$1}

let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro",
                  5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"]
let numbers = [-16, -58, -2127, 99, 88]

let numbersStrings = numbers.map{ (number) -> String in
    var number = number
    var output = ""
    let isNegative = number < 0 ? true : false
    number = number > 0 ? number : abs(number)
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 0
    output = isNegative ? "\(output) negativo" : output
    return output
}


// Capturar Valores

func makeIncrement(forIncrement amount: Int) -> () -> Int{
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrement(forIncrement: 10)
incrementByTen()



func calculateIvaTotalProducts(_ product: Int) -> () -> Int{
    var totalIva = 0.0
    let IVA = 0.19
    func calculateIvaByProduct() -> Int{
        totalIva = Double(product) * IVA
        return product + Int(totalIva)
    }
    return calculateIvaByProduct
}

let productCaculate =  calculateIvaTotalProducts(2000)
productCaculate()


func calculateIVAListProducts(listProduct products: [Int]) -> () -> Int{
    var totalWithIVA = 0
    let IVA = 0.19
    func calculateIVAProducts() -> Int {
        for product in products {
            let IVAProduct = Double(product) * IVA
            totalWithIVA += product + Int(IVAProduct)
        }
        return totalWithIVA
    }
    return calculateIVAProducts
}

let purchasesOfWeek = calculateIVAListProducts(listProduct: [2000, 3000, 5000, 10000])
print(purchasesOfWeek())
