from math import ceil

n = 600851475143

primeFactors = []

for i in range(2, ceil(n**0.5)):
    if n % i == 0:
        isPrime = True # default

        for p in primeFactors:
            if i % p == 0:
                isPrime = False

        if isPrime:
            primeFactors.append(i)

print(primeFactors[-1])
