/*
 Write a method to replace all spaces in a string with '%20: You may assume that the string
 has sufficient space at the end to hold the additional characters, and that you are given the "true"
 length of the string.
 */

func URLify(_ string: String) -> String {
    var strArr = Array(string)
    var newString = String()
    
    for x in strArr {
        if x == " " {
            strArr.insert("%", at: strArr.index(of: x)!)
            strArr.insert("2", at: strArr.index(of: x)!)
            strArr.insert("0", at: strArr.index(of: x)!)
            strArr.remove(at: strArr.index(of: x)!)
            newString = String(strArr)
        }
    }
    
    return newString
}

URLify("John Smith X")
//John%20Smith%20X


