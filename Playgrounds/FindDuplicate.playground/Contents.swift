
// Find duplicate
// https://leetcode.com/problems/find-the-duplicate-number/description/

/*
 Input: nums = [3,1,3,4,2]
 Output: 3
 */

func findDuplicate(_ nums: [Int]) -> Int {
    var duplicateDict = [Int:Int]()
    for number in nums {
        if let value = duplicateDict[number] {
           return number
        } else {
            duplicateDict.updateValue(1, forKey: number)
        }
    }
    return -1
}

// output
let testArray = [0,8,6,8,7]
print(findDuplicate(testArray)) // 8


// duplicate using Array extension

extension Array where Element: Hashable {
    func findDuplicate() -> Element? {
        var duplicateDict = [Element:Int]()
        for el in self {
            if let value = duplicateDict[el] {
               return el
            } else {
                duplicateDict.updateValue(1, forKey: el)
            }
        }
        return nil
    }
}

// output
let testArray2 = ["a", "b", "a", "c", "d"]
print(testArray2.findDuplicate()) // a
