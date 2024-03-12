// Maximum Product subarray
// https://leetcode.com/problems/maximum-product-subarray/

/*
 Input: nums = [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.
 */

// Time complexity = (O(n^2))
func maxProduct(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return nums[0]
    }
    
    var maximum = nums[0]
    
    for i in 0 ..< nums.count {
        var product = 1
        for j in i ..< nums.count {
            product = product * nums[j]
            maximum = max(product, maximum)
        }
    }
    return maximum
}

let testArray = [2,3,-2,4]
print(maxProduct(testArray))


//....................................................


// Time complexity = (O(n)) // prefix suffix
func maxProduct2(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return nums[0]
    }
    
    var maxProduct = nums[0]
    var pre = 1
    var suf = 1
    
    for i in 0 ..< nums.count {
        if pre == 0 {
            pre = 1
        }
        
        if suf == 0 {
            suf = 1
        }
        pre = pre * nums[i]
        suf = suf * nums[nums.count - i - 1]
        maxProduct = max(maxProduct, max(pre,suf))
    }
    return maxProduct
}
print(maxProduct2(testArray))
