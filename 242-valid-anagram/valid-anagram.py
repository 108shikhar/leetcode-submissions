class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        x=''.join(sorted(s))
        y=''.join(sorted(t))
        if x==y:
            return True
        else:
            return False