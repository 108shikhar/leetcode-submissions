class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int:
        sum=0
        res=0
        d={0:1}
        for n in nums:
            sum=sum+n
            diff=sum-k
            if diff in d:
                res=res+d[diff]
            if sum not in d:
                d[sum]=1
            else:
                d[sum]=d[sum]+1
        return res