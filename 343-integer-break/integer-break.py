class Solution:
    def integerBreak(self, n: int) -> int:
        dp=[None]*(n+1)
        def solve(j):
            if j==1:
                return 1
            if dp[j]!=None:
                return dp[j]
            ans=0
            for i in range(1,j,1):
                ans=max( ans, (i*(j-i)) , i*solve(j-i) )
            dp[j] = ans
            return dp[j]
        return solve(n)