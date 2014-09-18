sumOfSquares = 0
theSum = 0

for i in range(1,101):
    sumOfSquares = sumOfSquares + i*i
    theSum = theSum + i

print(theSum * theSum - sumOfSquares)
