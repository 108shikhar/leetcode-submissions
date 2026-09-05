class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        d={}
        for i, x in enumerate(nums):
            if x in d:
                d[x]=d[x]+1
            elif x not in d:
                d[x]=1
        d=dict(sorted(d.items(), key=lambda x: x[1], reverse=True))
        a=[]
        b=0
        for key, values in d.items():
            if b==k:
                break
            a.append(key)
            b=b+1
        return a