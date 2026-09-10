class Solution:
    def minDistance(self, word1: str, word2: str) -> int:
        m=len(word1)-1
        n=len(word2)-1
        dp=[[None for c in range(n+1)] for r in range(m+1)]
        def dots(m,n):
            if m<0 or n<0:
                return 0
            if dp[m][n]!=None:
                return dp[m][n]
            if word1[m]==word2[n]:
                dp[m][n]=1+dots(m-1,n-1)
            elif word1[m]!=word2[n]:
                dp[m][n]=max(dots(m-1,n),dots(m,n-1))
            return dp[m][n]
        val=dots(m,n)
        del1=len(word1)-val
        del2=len(word2)-val
        ans=del1+del2
        return ans