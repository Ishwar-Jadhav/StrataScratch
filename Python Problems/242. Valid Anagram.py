s = "anagram"
t = "nagaram"

# Output: true

s = list(s)
s.sort()
t = list(t)
t.sort()

print("s = ", s)
print("t = ", t)

if s == t:
    print(True)
else:
    print(False)
