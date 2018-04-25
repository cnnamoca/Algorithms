// Merge Sort
// From https://www.youtube.com/watch?v=DfO089qWEE8&t=579s

import UIKit

func mergeSort(array: [Int]) -> [Int] {
    
    if array.count <= 1 {
        return array
    }
    
    //split array
    let leftArr = Array(array[0..<array.count/2])
    let rightArr = Array(array[array.count/2..<array.count])
    
    //run merge sort recursively
    return merge(left: mergeSort(array: leftArr), right: mergeSort(array: rightArr))
}

func merge(left: [Int], right: [Int]) -> [Int] {
    
    var mergedArr: [Int] = []
    //create mutable arrays from passed parameters
    var left = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        
        if left.first! < right.first! {
            mergedArr.append(left.removeFirst())
        } else {
            mergedArr.append(right.removeFirst())
        }
    }
    
    return mergedArr + left + right
}

let array = [7, 4, 6, 15, 56, 47, 23, 68]
mergeSort(array: array)


