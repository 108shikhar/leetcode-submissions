class Solution:
    def minCostClimbingStairs(self, cost: list[int]) -> int:
        dp=[None]*1000
        def solve(i):
            if i>=len(cost):
                return 0
            if dp[i]!=None:
                return dp[i]
            take=cost[i]+solve(i+1)
            notake=cost[i]+solve(i+2)
            dp[i]=min(take,notake)
            return dp[i]
        return min(solve(0), solve(1))