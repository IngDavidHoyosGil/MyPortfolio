def valid_triangle(sides):
    a, b, c = sides
    if (
        a + b >= c and b + c >= a and c + a >= b
        and a > 0 and b > 0 and c > 0
       ):
        return True
    else:
        return False

def equilateral(sides):
    if not valid_triangle(sides):
        return False
        
    a, b, c = sides
    return True if a == b == c else False

def isosceles(sides):
    if not valid_triangle(sides):
        return False
        
    a, b, c = sides
    return True if a == b or b == c or c == a else False

def scalene(sides):
    if not valid_triangle(sides):
        return False
        
    a, b, c = sides
    return True if (a != b and b != c and c != a) else False
