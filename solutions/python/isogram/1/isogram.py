def is_isogram(string):
    letters = sorted(ch.lower() for ch in string if ch.isalpha())
    for i in range(len(letters) - 1):
        if letters[i] == letters[i + 1]:
            return False
        
    return True
