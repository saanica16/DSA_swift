// Remove Duplicates in sorted Array
// https://leetcod.com/problems/remove-duplicates-from-sorted-array/description/

/*
 Input: nums = [1,1,2]
 Output: 2, nums = [1,2,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count < 2 {
        return nums.count
    }
    
    var nextIterator = 1
    var currentIndex = 0
    
    while nextIterator < nums.count {
        if nums[currentIndex] == nums[nextIterator] {
            nums.remove(at: nextIterator)
        } else {
            currentIndex = nextIterator
            nextIterator += 1
        }
    }
    
    return nums.count
}

// output
var testArray = [1,1,2]
print(removeDuplicates(&testArray)) //2
