arr = [2, 4, 7, 13, 18, 12, 21, 20, 19]
# arr.sort()
# print(arr[-1])

largest = arr[0]
for i in range(len(arr)):
    if arr[i] > largest:
        largest = arr[i]
print(largest)

