def rotate(text, key):

    return "".join(
        chr((ord(ch) - ord('a') + key) % 26 + ord('a')) if "a" <= ch <= "z" 
        else chr((ord(ch) - ord('A') + key) % 26 + ord('A')) if "A" <= ch <= "Z" 
        else ch
        for ch in text
    )