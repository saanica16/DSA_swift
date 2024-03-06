// Two-Sum Problem
// https://leetcode.com/problems/two-sum/

/*
 Input: nums = [3,3], target = 6
 Output: [0,1]
 */

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var mapDict = [Int: Int]()
    if nums.count < 2 {
        return []
    }
    
    for(index, value) in nums.enumerated() {
        let complement = target - value
        
        if let valueIndex = mapDict[complement] {
            return [valueIndex, index]
        } else {
            mapDict.updateValue(index, forKey: value)
        }
    }
    return []
}

// output
let testArray =  [2,7,11,15]
let target = 9
print(twoSum(testArray, target))
