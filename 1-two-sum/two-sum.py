class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i, j in enumerate(nums):
            k=target-j
            if k in nums:
                l=nums.index(k)
                if l!=i and l>i:
                    return [i,l]
                elif l!=i and l<i:
                    return [l,i]