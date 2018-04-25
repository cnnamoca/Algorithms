//Two Sum Problem from https://www.youtube.com/watch?v=cUmGngurKXo

//The best way to go through this algorithm is by using pointers from the lowest end of the array and the highest end of the array

//We also have to make sure that our array is sorted

import Foundation

let array = [1, 4, 6, 2, 6, 7, 12, 14]

func twoSum(array: [Int], sum: Int) -> Bool {
    
    var lhs = 0
    var rhs = array.count - 1
    
    while lhs < rhs {
        
        let sumOfItems = array[lhs] + array[rhs]
        
        if sumOfItems == sum {
            return true
        } else if sumOfItems < sum {
            lhs += 1
        } else if sumOfItems > sum {
            rhs -= 1
        }
    }
    
    return false
}

twoSum(array: array, sum: 31)
