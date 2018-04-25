//Reversing strings

import UIKit

func reverseString(_ str: String) -> String {
    var reversed = String()
    var str = str
    
    for _ in str {
        let lastChar = str.last
        reversed.append(lastChar!)
        str.removeLast()
    }
        
    return reversed
}

reverseString("hello world")
