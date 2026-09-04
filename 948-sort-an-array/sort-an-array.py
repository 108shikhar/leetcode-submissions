class Solution:
    def sortArray(self, nums: List[int]) -> List[int]:
        m=len(nums)//2
        if len(nums)<=1:
            return nums
        a=nums[:m]
        b=nums[m:]
        a= self.sortArray(a)
        b= self.sortArray(b)
        c=[]
        i=0
        j=0
        while i<len(a) and j<len(b):
            if a[i]<=b[j]:
                c.append(a[i])
                i=i+1
            elif a[i]>b[j]:
                c.append(b[j])
                j=j+1
        while i<len(a):
            c.append(a[i])
            i=i+1
        while j<len(b):
            c.append(b[j])
            j=j+1
        return c