class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        a=[]
        for i, j in enumerate(nums):
            if j!=val:
                a.append(j)
        nums[:]=a
        return len(nums)