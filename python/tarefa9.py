def funcao(substring1: str, substring2: str) -> str:
    ans = ""
    
    for _ in range(len(substring1)):
        if substring2.startswith(substring1):
            ans = substring1
            break
        else:
            substring1 = substring1[1:]

    return ans
