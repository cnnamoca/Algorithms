// Understanding Palindromes in Swift
// From https://github.com/raywenderlich/swift-algorithm-club/tree/master/Palindromes

import Foundation

func isPalindrome(str: String) -> Bool {
    let strippedString = str.replacingOccurrences(of: "\\W", with: "")
    let length = strippedString.count
    print(length)
    
    if length > 1 {
        palindrome(str: strippedString.lowercased(), left: 0, right: length - 1)
    }
    
    return false
}

func palindrome(str: String, left: Int, right: Int) -> Bool {
    if left >= right {
        return true
    }
    
    let lhs = str[str.index(str.startIndex, offsetBy: left)]
    let rhs = str[str.index(str.startIndex, offsetBy: right)]

    if lhs != rhs {
        return false
    }
    
    return palindrome(str: str, left: left + 1, right: right + 1)
}

isPalindrome(str: "radar")
