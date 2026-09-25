class Solution:
    def canPartition(self, nums: list[int]) -> bool:
        val=sum(nums)
        if val%2!=0:
            return False
        else:
            target=val//2
            dp=[[None for c in range(target+1)] for r in range(len(nums))]
            dp[0][0]=True
            def solve(i,j):
                if i<0 or j<0:
                    return False
                if j==0:
                    return True
                if dp[i][j]!=None:
                    return dp[i][j]
                take=solve(i-1,j-nums[i])
                nottake=solve(i-1,j)
                dp[i][j]=take or nottake
                return dp[i][j]
            return solve(len(nums)-1,target)