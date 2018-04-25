//Binary Search
//Only works on sorted arrays

let numbers = [1, 2, 4, 5, 7, 8, 9, 11, 14, 21, 24]

func binarySearch(array: [Int], key: Int) -> Bool {
    
    if array.count == 0 {
        return false
    }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    let midIndex = maxIndex/2
    let midValue = array[midIndex]
    
    if key < array[minIndex] || key > array[maxIndex] {
        print("\(key) is not found in the array")
        return false
    }
    
    if key > midValue {
        //Take the upper half of the array
        let slice = Array(array[midIndex + 1...maxIndex])
        print(slice)
        //recursion
        return binarySearch(array: slice, key: key)
    }
    
    if key < midValue {
        //Take the lower half of the array
        let slice = Array(array[minIndex...midIndex - 1])
        print(slice)
        //recursion
        return binarySearch(array: slice, key: key)
    }
    
    if key == midValue {
        print("\(key) is found in the array")
        return true
    }
    
    return false
}

binarySearch(array: numbers, key: 24)




















