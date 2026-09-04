class Solution:
    def sortColors(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        for i in range(1, len(nums), 1):
            x=nums[i]
            j=i-1
            while j>=0 and nums[j]>x:
                nums[j],nums[j+1]=nums[j+1],nums[j]
                j=j-1
            nums[j+1]=x