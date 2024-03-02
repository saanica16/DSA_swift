// sort 0 & 1


func sortZeroOne(arr: inout [Int]) {
    var start = 0
    var end = arr.count - 1
    
    while start < end {
        while arr[start] == 0 && start < end {
            start += 1
        }
        
        while arr[end] == 1 && start < end {
            end -= 1
        }
        
        if start < end {
            arr[start] = 0
            arr[end] = 1
            start += 1
            end -= 1
        }
    }
}

func sortZeroOne2ndApproach(arr: inout [Int]) {
    var start = 0
    var end = arr.count - 1
    
    while start < end {
        if arr[start] == 1 {
            if arr[end] != 1 {
                // swap
                let temp = arr[start]
                arr[start] = arr[end]
                arr[end] = temp
                
                end -= 1
            }
        } else {
            start += 1
        }
    }
}

var testArray = [1,0,1,0,0,0,0]
sortZeroOne2ndApproach(arr: &testArray)
print(testArray) // [0, 0, 0, 0, 0, 1, 1]
