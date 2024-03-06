// Third Max in distinct array
// https://leetcode.com/problems/third-maximum-number/

/*
 Input: nums = [2,2,3,1]
 Output: 1
 Explanation:
 The first distinct maximum is 3.
 The second distinct maximum is 2 (both 2's are counted together since they have the same value).
 The third distinct maximum is 1.
 */

func thirdMax(_ nums: [Int]) -> Int {
    let distinctArray = Array(Set(nums))
    var first = Int32(distinctArray[0])
    var second = Int32.min
    var third = Int32.min
    
    for value in distinctArray {
        var newVal = Int32(value)
        if newVal > first {
            third = second
            second = first
            first = newVal
        } else if first > value && value > second {
            third = second
            second = newVal
        } else if value > third {
            third = newVal
        }
    }
    
    if distinctArray.count < 3 {
        return Int(max(first, second))
    } else {
        return Int(third)
    }
}

// output

let testArray = [1,2,-2147483648]
print(thirdMax(testArray))
