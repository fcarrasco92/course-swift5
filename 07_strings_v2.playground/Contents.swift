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
