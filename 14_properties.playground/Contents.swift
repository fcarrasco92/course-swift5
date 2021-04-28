import UIKit

// Stored properties

struct FixedLengthRange {
    var firstValue: Int
    var length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)


rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)


// rangeOfFourItems.length = 5 // Cannot assign to property: 'rangeOfFourItems' is a 'let' constant


