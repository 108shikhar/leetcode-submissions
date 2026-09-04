class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        n=len(nums)/2
        d={}
        for i, j in enumerate(nums):
            if j not in d:
                d[j]=1
            elif j in d:
                d[j]=d[j]+1
        for key, value in d.items():
            if d[key]>n:
                return key