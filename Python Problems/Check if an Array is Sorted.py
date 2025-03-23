arr = [3,4,5,1,2]
n = len(arr)
for i in range(1, n):
    if arr[i] < arr[i - 1]:
        print("False")
        break
    else:
        continue
    print("True")
print("True")