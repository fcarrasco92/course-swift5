import UIKit

func canThrowError() throws{
    // aquí hay codigo
}

do{
    try canThrowError()
    // si llegamos aquí, no hay error.
}catch{
//    si llegamos aquí hay error
}

let haveHungry: Bool = false
let haveCleanDishes: Bool = false
let haveIngredient: Bool = false

func makeASandwich() throws{
}

func dishwashing(){}

func goToShopping(){}

func waitOneHour(){}

do{
    try makeASandwich()
    
}catch{
    // tengo platos limpios ---> lavar platos
    if !haveCleanDishes {
        dishwashing()
    }
    // no tengo ingredientes --> ir a comprar
    if !haveIngredient{
        goToShopping()
    }
    // no tengo hambre --> espero una hora
    if !haveHungry {
        waitOneHour()
    }
}


// aserciones (debug) y precondiciones (build to prod)

let age = -5
//assert(age >= 0, "La edad de una persona no es menor a cero")
precondition(age >= 0, "La edad de una persona no es menor a cero")
// aquí el codigo sigue.

if age > 10{
    print("puedes subir a la montaña rusa")
}else if age >= 0 {
    print("eres demasiado para subir  a la montaña rusa")
}else{
    assertionFailure("La edad de una persona no puede ser negativa")
}



