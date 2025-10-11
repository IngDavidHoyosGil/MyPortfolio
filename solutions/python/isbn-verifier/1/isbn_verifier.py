def is_valid(isbn):
    result = 0
    
    for ch in isbn:
        if not (ch.isdigit() or ch in ("X", "x", "-")):
            return False
    
    numbers = [ch for ch in isbn if ch.isdigit() or ch in ("X", "x")]    
        
    if len(numbers) == 10:
        if numbers[-1] in ("X", "x"):
            numbers[-1] = 10
        try:
            numbers = [int(n) if isinstance(n, str) else n for n in numbers]
        except ValueError:
            return False

        for i, num in enumerate(numbers):
            result += num * (10 - i)

        return result % 11 == 0      
        
    else:
        return False
