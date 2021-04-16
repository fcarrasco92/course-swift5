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
