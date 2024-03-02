// valid palindrome
//https://leetcode.com/problems/valid-palindrome/description/

/*
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 */

func isPalindrome(_ s: String) -> Bool {
    let customString = s.lowercased().filter {$0.isLetter || $0.isWholeNumber}
    let charArray = Array(customString)
    
    var start = 0
    var end = charArray.count - 1
    
    while start <= end {
        if charArray[start] != charArray[end] {
            return false
        } else {
            start += 1
            end -= 1
        }
    }
    return true
}


// output
let testString = "race a car"
print(isPalindrome(testString)) // false
