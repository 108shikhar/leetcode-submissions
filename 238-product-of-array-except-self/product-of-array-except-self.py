class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        pre=[]
        post=[]
        pre.append(1)
        post.append(1)
        a=1
        b=1
        for i in range(1, len(nums), 1):
            j=i-1
            x=nums[j]
            a=a*x
            pre.append(a)
        for i in range(len(nums)-1, 0, -1):
            b=b*nums[i]
            post.append(b)
        post.reverse()
        c=[]
        for i in range(0, len(nums), 1):
            z=pre[i]*post[i]
            c.append(z)
        return c