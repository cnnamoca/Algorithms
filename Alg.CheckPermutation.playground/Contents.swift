/*
 Given two strings, write a method to decide if one is a permutation of the
 other.
 */

func checkPermutation(_ string1: String, _ string2: String) -> Bool {
    let charSet1 = Set(string1)
    let charSet2 = Set(string2)
    
    if charSet1.isSubset(of: charSet2) {
        return true
    }
    
    return false
}

checkPermutation("abc", "cab")
//true
