class Solution:
    def majorityElement(self, nums: List[int]) -> List[int]:
        d={}
        m=len(nums)//3
        for i, x in enumerate(nums):
            if x in d:
                d[x]=d[x]+1
            elif x not in d:
                d[x]=1
        a=[]
        for key, values in d.items():
            if d[key]>m:
                a.append(key)
        return a