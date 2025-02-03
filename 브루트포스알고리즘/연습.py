# 문제 해결 방법: 소수이면 1을 더하고, 소수가 아니면 넘어가며 문제 해결하면 됨
# N개의 자연수가 존재하므로 O(N), 각 수에 대해 소수인지 판별해야 하므로 O(N)
# => 시간 복잡도는 O(N^2)이 나오게 되고, N은 1000이하의 자연수 이므로 이 풀이는 100만번 연산 내에 문제를 해결할 수 있게 됨.

n = 1000
result = 0

for i in range(1, n+1):  # O(N)
	if i == 1:  # 1은 예외처리
		continue
	
	is_prime = True  # 소수인지 아닌지
	
	for j in range(2, i):  # O(i)
		if i % j == 0:  # 1과 i를 제외한 다른 것이 존재
			is_prime = False
		
	if is_prime:  # 소수일 때만 +1
		result += 1

print(result)
# -------------------------------------------------------
from math import sqrt

n = int(1e6)
result = 0
# is_prime[k]rk True이면 k는 소수, False이면 k는 소수가 아님
is_prime = [True for _ in range(n+1)]
is_prime[1] = False

for i in range(2, int(sqrt(n) + 1)):
	if is_prime[i]:
		for j in range(2 * i, n + 1, i):
			is_prime[j] = False
		
for i in range(1, n + 1):
	if is_prime[i]:
		result += 1
		
print(result)
