class Solution:
    def uniquePathsWithObstacles(self, obstacleGrid: list[list[int]]) -> int:
        m=len(obstacleGrid)
        n=len(obstacleGrid[0])
        dp=[[None for c in range(n)] for r in range(m)]
        def solve(i,j):
            if obstacleGrid[i][j]==1:
                return 0
            if i==0 and j==0:
                return 1
            if i<0 or j<0:
                return 0
            if dp[i][j]!=None:
                return dp[i][j]
            up=solve(i,j-1)
            left=solve(i-1,j)
            dp[i][j]=up+left
            return dp[i][j]
        return solve(m-1,n-1)