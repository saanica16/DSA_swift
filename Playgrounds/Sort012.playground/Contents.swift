// Sort 0 1 2
// https://leetcode.com/problems/sort-colors/description/

/*
 Input: nums = [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]
 */

func sortColors(_ nums: inout [Int]) {
    var low = 0
    var mid = 0
    var high = nums.count - 1
    
    while mid <= high {
        if nums[mid] == 0 && mid <= high {
            let temp = nums[low]
            nums[low] = nums[mid]
            nums[mid] = temp
            
            low += 1
            mid += 1
        } else if nums[mid] == 1 && mid <= high {
            mid += 1
        } else {
            if mid <= high {
                let temp = nums[mid]
                nums[mid] = nums[high]
                nums[high] = temp
                
                high -= 1
            }
        }
    }
}

//output
var testArray = [2,0,2,1,1,0,0]
sortColors(&testArray)
print(testArray)  //[0, 0, 0, 1, 1, 2, 2]
