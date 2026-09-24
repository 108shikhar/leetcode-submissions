class Solution:
    def numDecodings(self, s: str) -> int:
        val="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        d={}
        for i in range(0,26,1):
            d[i + 1] = val[i]
        dp=[None]*100
        def solve(i):
            if i==len(s):
                return 1
            if s[i]=='0':
                return 0
            if i==(len(s)-1):
                return 1
            if dp[i]!=None:
                return dp[i]
            ans1=solve(i+1)
            ans2=0
            if int(s[i:i+2])<27:
                ans2=solve(i+2)
            dp[i]=ans1+ans2
            return dp[i]
        return solve(0)