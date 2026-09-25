class Solution:
    def lengthOfLIS(self, nums: list[int]) -> int:
        dp=[1]*(len(nums)+1)
        for i in range(1,len(nums),1):
            j=i-1
            while j>=0:
                if nums[j]<nums[i]:
                    dp[i]=max(dp[i],1+dp[j])
                j=j-1
        return max(dp)