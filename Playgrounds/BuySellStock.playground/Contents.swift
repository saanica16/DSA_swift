// Buy sell stock
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

/*
 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
 */

func maxProfit(_ prices: [Int]) -> Int {
    if prices.count == 0 {
        return 0
    }
    
    var maxProfit = 0
    var minElement = prices[0]
    
    for element in prices {
        minElement = min(minElement,element)
        let currentProfit = element - minElement
        maxProfit = max(maxProfit, currentProfit)
    }
    
    return maxProfit
}

// output
let testArray = [7,6,4,2]
print(maxProfit(testArray)) // 0
