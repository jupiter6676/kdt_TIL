# 소문자로 구성된 문자열 word가 주어질 때, 
# 모두 대문자로 바꾸어 표현하시오.
# .upper(), .swapcase() 사용 금지

word = 'banana'

for ch in word:
    # ASCII → 소문자 - 대문자 = 32
    toCap = chr(ord(ch) - 32)
    print(toCap, end='')