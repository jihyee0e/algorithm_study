# 토너먼트
# 16 8 9
# 1 - 1 vs 2, 3 vs 4, 5 vs 6, 7 vs 8(kim), 9(lim) vs 10, 11 vs 12, 13 vs 14, 15 vs 16
# 2 - 1 vs  4(2),    5(3) vs   8(4),   9(5) vs   11(6),  13(7)  vd 15(8)
# 3 - 4(1)     vs       8(2),       9(3)        vs      13(4)
# 4 -          8                vs             9

# 1. kim, lim이 만날 때까지 반복
def find_round(n, kim, lim):
    round_count = 0  # 몇 라운드에서 대결하는지에 대한 변수

    while kim != lim:  # 번호가 같아질 때까지 반복
        kim = (kim + 1) // 2
        lim = (lim + 1) // 2
        round_count += 1
    return round_count

n, kim, lim = map(int, input().split())
print(find_round(n, kim, lim))

# --------------------------------------------------------

# 2. 재귀(1번식 변형)
def find_round_recursive(kim, lim, round_count=0):
    if kim == lim:
        return round_count
    return find_round_recursive((kim + 1) // 2, (lim + 1) // 2, round_count +1)


n, kim, lim = map(int, input().split())
print(find_round_recursive(kim, lim))


                                

