'''
< 해당 집에 거주민 수 출력하기 >
# a층의 b호에 살려면 자신의 아래(a-1)층의 1호부터 b호까지 사람들의 수의 합만큼 사람 데려와 살아야 함
- 0층부터 있고, 각층 1호부터 있음
- 0층 i호에는 i명이 산다
=> k층에 n호에 몇 명 살고 있는지 출력하기 

'''
def solve():
    dp = []  # 층
    for i in range(15):  # n<=14
        row = [0] * 15  # 호
        dp.append(row)  # 2차원 배열로 저장

    for i in range(1, 15):  # 0호의 i호에는 i명이 산다
        dp[0][i] = i

    for k in range(1, 15):  # k층 ex. 1
        for n in range(1, 15):  # n호  ex. 3 
            # dp[1][1]=dp[0][1]/[k-1][n]
            # dp[1][2]=dp[0][1]+dp[0][2] / dp[1][1]+[k-1][n]
            # dp[1][3]=dp[0][1]+dp[0][2]+dp[0][3] / dp[1][2]+[k-1][n]
            dp[k][n] = dp[k][n-1] + dp[k-1][n]

    t = int(input())  # 테스트 케이스 개수
    case = [(int(input()), int(input())) for _ in range(t)]

    for k, n in case:
        print(dp[k][n])

solve()

'''
2
1층 3호 -> 6명
0층 1호 1명 dp[0][1]
0층 2호 2명 dp[0][2]
0층 3호 3명 dp[0][3]
=> 1층 3호에 사려면 0층 1호부터 3호까지 사람 수 합 -> dp[0][1] + dp[0][2] + dp[0][3] = 6명 dp[1][3] = 6

2층 3호 -> 10명
1층 1호에 살려면 0층 1호명수 -> dp[1][1] = dp[0][1] = 1
1층 2호에 살려면 0층 1호부터 2호까지 사람 수 합 -> dp[1][2] = dp[0][1] + dp[0][2]
1층 3호에 살려면 0층 1호부터 3호까지 사람 수 합 -> dp[1][3] = dp[0][1] + dp[0][2] + dp[0][3]
=> 2층 3호에 살려면 1층 1호부터 3호까지 사람 수 합 -> dp[1][1] + dp[1][2] + dp[1][3]

'''