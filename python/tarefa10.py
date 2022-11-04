def concorda(a, b, func):
    a = iter(a)
    b = iter(b)
    try:
        while True:
            first = next(a)
            second = next(b)
            yield func(first, second)
    except StopIteration:
        return
    
def aux(a, b):
    if abs(a-b)<=1:
        return a
    else:
        return False
