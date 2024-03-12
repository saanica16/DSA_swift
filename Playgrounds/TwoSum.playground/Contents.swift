// Two sum
// https://leetcode.com/problems/two-sum/

/*
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 */


// complexity - O(n)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    
    for (index, value) in nums.enumerated() {
        let complement = target - value
    
        if let value = dict[complement] {
            return [index,value]
        } else {
            dict.updateValue(index, forKey: value)
        }
    }
    return []
}

// output
let testArray = [3,1,5,0,8]
let target = 13
print(twoSum(testArray, target)) // [4,2]
