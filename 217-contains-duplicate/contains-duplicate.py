class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        d={}
        for i, j in enumerate(nums):
            x=nums[i]
            if x not in d:
                d[x]=1
            else:
                d[x]=d[x]+1
        for key, values in d.items():
            if d[key]>1:
                return True
                break
        return False