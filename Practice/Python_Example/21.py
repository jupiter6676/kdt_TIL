# 주어진 숫자를 뒤집은 결과를 출력하시오. 
# 문자열이 아닌 숫자로 활용해서 풀어주세요. str() 사용 금지

n = int(input())

while n > 0:
    print(n % 10, end='')
    n //= 10

while n > 0:
    print(n % 10, end='')
    n //= 10

# 2.
'''
res = 0
while n:
    res *= 10
    res += n % 10
    
    n //= 10

print(res)
'''