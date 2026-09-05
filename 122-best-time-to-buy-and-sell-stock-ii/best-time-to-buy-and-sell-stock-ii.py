class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        d=0
        for i in range(0,len(prices)-1,1):
            if prices[i]<prices[i+1]:
                a=prices[i]
                b=prices[i+1]
                d=d+(b-a)
        return d