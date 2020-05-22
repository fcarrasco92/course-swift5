import UIKit

let age : UInt8 = 27

let minValue = UInt8.min
let maxValue = UInt8.max

let minInt = Int.min
let maxInt = Int.max
let max64Int = Int64.max
let min64Int = Int64.min

let f1: Float = 3.14235124 // Float have 6 decimals
let d1: Double = 3.14235124 // Double have 15 decimales

let number = 42 // Int
let pi = 3.14159 // swift asign for default as Double
let anotherPi = 3 + 0.14159 // Double

let decimalInteger = 17 // 1*10 + 7
let binaryInteger = 0b10001
let octalInteger = 0o21 // 2*8^1+1*8^0
let hexadecimalInteger = 0x11 // 1*16^1+1*16^0

let decimalDouble = 12.1875 //
let exponentDouble = 12.1875e1
let hexadecimalDouble = 0xC.3p0

let paddleDouble = 00123.456
let someNumber = 000097.540
let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000.000_1

// ERRORES TIPOS DE DATO
//let cannotNegative: UInt8 = -12 is an error
//let tooBig: UInt8 = UInt8.max + 2 is an error

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalDouble

typealias AudioSample = UInt16
var maxAmplitud = AudioSample.max // UInt16.max
