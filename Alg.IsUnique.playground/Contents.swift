/*
 Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
 */

func isUnique(_ string: String) -> Bool {
    let characters = Array(string)
    for char in characters{
        let repeated = characters.filter{$0 == char}.count
        if repeated > 1 {
            return false
        }
    }

    return true
}

isUnique("hello")
//false
