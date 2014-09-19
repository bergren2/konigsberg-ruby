n = 1000

for a in range(1, n):
    for b in range(a + 1, n):
        for c in range(b + 1, n):
            if a*a + b*b == c*c and a + b + c == n:
                print(a*b*c)
