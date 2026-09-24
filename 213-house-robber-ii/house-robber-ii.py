class Solution:
    def rob(self, nums: list[int]) -> int:
        def house(i,x):
            if i>=len(x):
                return 0
            if dp[i]!=None:
                return dp[i]
            rob=x[i]+house(i+2,x)
            notrob=house(i+1,x)
            dp[i]= max(rob, notrob)
            return dp[i]
        n=len(nums)
        if n==1:
            return nums[0]
        a=nums[:n-1:1]
        b=nums[1::1]
        dp=[None]*n
        ans1=house(0,a)
        dp=[None]*n
        ans2=house(0,b)
        return max(ans1,ans2)