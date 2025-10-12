def rotate(text, key):
    result = ""

    for ch in text:
        result += (
            chr((ord(ch) - ord('a') + key) % 26 + ord('a')) if "a" <= ch <= "z" 
            else chr((ord(ch) - ord('A') + key) % 26 + ord('A')) if "A" <= ch <= "Z" 
            else ch
        )
    return result