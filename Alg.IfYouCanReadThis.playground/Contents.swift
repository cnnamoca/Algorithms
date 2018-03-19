let NATODict: [Character: String] = [
    "a":"Alfa",
    "i":"India",
    "f":"Foxtrot",
    "y":"Yankee",
    "o":"Oscar",
    "u":"Uniform",
    "c":"Chalie",
    "n":"November",
    "r":"Romeo",
    "e":"Echo",
    "d":"Delta",
    "t":"Tango",
    "s":"Sierra",
    "h":"Hotel",
    "m":"Mike",
    "g":"Golf",
]

func toNato(_ words: String) -> String {
    var newString = String()
    var newArr = [String]()
    let lowerCased = words.lowercased()
    let wordsArr = lowerCased.map {$0}
    let filteredWordsArr = wordsArr.filter {$0 != " " && $0 != "!"}

    for letter in filteredWordsArr {
        newArr.append(NATODict[letter]!)
    }

    newString = newArr.joined(separator: " ")
    print("\(newString)")
    return newString
}

toNato("If you can read!")

