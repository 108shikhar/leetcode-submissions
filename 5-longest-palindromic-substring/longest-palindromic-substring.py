class Solution:
    def longestPalindrome(self, s: str) -> str:
        n=len(s)
        res=""
        reslen=0
        for i in range(0,n,1):
            #oddpallindrome
            l,r=i,i
            while l>=0 and r<n:
                if s[l]==s[r] and reslen<(r-l+1):
                    res=s[l:r+1]
                    reslen=(r-l+1)
                elif s[l]!=s[r]:
                    break
                l=l-1
                r=r+1
            l,r=i,i+1
            #evenpallindrome
            while l>=0 and r<n:
                if s[l]==s[r] and reslen<(r-l+1):
                    res=s[l:r+1]
                    reslen=(r-l+1)
                elif s[l]!=s[r]:
                    break
                l=l-1
                r=r+1
        return res