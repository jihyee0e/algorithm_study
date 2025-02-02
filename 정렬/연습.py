# Q1. N개의 숫자가 주어질 때, 숫자들을 오름차순으로 정렬한 결과와 내림차순으로 정렬한 결과 출력하기
# 1 <= N <= 100,000
# 1. 
n = list(map(int, input().split()))

print(f'오름차순 정렬: {sorted(n)}')  # 오름차순
print(f'내림차순 정렬: {sorted(n, reverse=True)}')  # 내림차순

# 2. join 사용해보기
n = list(map(int, input().split()))

li1 = sorted(n)
li2 = sorted(n, reverse=True)

print(' '.join(map(str, li1)))
print(' '.join(map(str, li2)))

# -------------------------------------------------------------------
# Q2. N개의 단어들이 주어질 때, 단어들을 사전순으로 정렬한 결과를 출력하시오
# 입력으로는 N이 먼저 주어지며, 이어서 단어들이 줄 단위로 주어진다
# 1 <= N <= 100,000, 1 <= 각 단어의 길이 <= 20
# 1.
n = int(input())
words = [input() for _ in range(n)]

words = sorted(words)

for word in words:
    print(word, end='\n')

# -------------------------------------------------------------------
arr = [(2, 1, 1), (1, 1, 3), (1, 2, 1), (1, 1, 2)]
print(sorted(arr))
# print(sorted(arr, key=lambda x: -x))
print(sorted(arr, key=lambda x : (-x[0], -x[1], -x[2])))

lst = [(3, 10), (4, 20), (1, 30),  (2, 20)]
result = sorted(lst, key=lambda x : (-x[1], x[0]))
print(sorted(lst))
print(result)