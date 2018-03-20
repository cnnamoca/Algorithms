/*
 Return the first recurring character from a given string
 */

func firstRecurring(_ string: String) -> String {
    var countDict = [Character:Int]()
    for char in string {
        if countDict.keys.contains(char)
        {
            return char.description
        } else {
            countDict[char] = 1
        }
    }
    return "No recurrences"
}

firstRecurring("CDFGUOU")
//U
