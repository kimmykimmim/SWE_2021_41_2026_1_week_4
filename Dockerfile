FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    seen = set()\n\
    while n != 1:\n\
        if n in seen:\n\
            return False\n\
        seen.add(n)\n\
        total = 0\n\
        for digit in str(n):\n\
            total += int(digit) ** 2\n\
        n = total\n\
    return True\n\
print(isHappy(19))\n\
print(isHappy(2))\
"]
