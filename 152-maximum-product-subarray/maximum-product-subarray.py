class Solution:
    def maxProduct(self, nums: list[int]) -> int:
        maximum=nums[0]
        minimum=nums[0]
        ans=nums[0]
        dp={}
        for i in range(1,len(nums),1):
            x=nums[i]
            big=max(x,x*maximum,x*minimum)
            small=min(x,x*maximum,x*minimum)
            ans=max(big,maximum,ans)
            maximum=big
            minimum=small
        return ans
