class Solution:
    def sumDecoded(self, nums: list[int]) -> int:
        res=0
        for x in nums:
            rem=x%10
            div=x//10
            given=(10**9)+7
            val=str(div)
            num1=int(val[:rem:1])
            num2=int(val[rem::1])
            prod=pow(num1,num2,given)
            res=res+prod
            res=res%given
        return res