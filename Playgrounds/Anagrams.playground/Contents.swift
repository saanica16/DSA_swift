// Anagrams
// https://leetcode.com/problems/valid-anagram/description/

/*
 Input: s = "anagram", t = "nagaram"
 Output: true
 */

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    
    var anagramDictionary = [Character:Int]()
    for character in s {
        if let value = anagramDictionary[character] {
            anagramDictionary[character] = value + 1
        } else {
            anagramDictionary.updateValue(1, forKey: character)
        }
    }
    
    for character in t {
        if let value = anagramDictionary[character] {
            anagramDictionary[character] = value - 1
        }
    }
    
    let zeroCountKeys = anagramDictionary.filter { $0.value == 0 }.count
    let uniqueKeyCount = Set(s).count
    
    return zeroCountKeys == uniqueKeyCount
}

// output
let testString1 = "ab"
let testString2 = "a"
print(isAnagram(testString1, testString2)) //false
