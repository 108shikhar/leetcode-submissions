class Solution:
    def wordBreak(self, s: str, wordDict: list[str]) -> bool:
        dp=[False]*(len(s)+1)
        dp[len(s)]=True
        for i in range(len(s)-1,-1,-1):
            for x in wordDict:
                l=len(x)
                if s[i:i+l]==x:
                    dp[i]=dp[i+l]
                if dp[i]==True:
                    break
        return dp[0]