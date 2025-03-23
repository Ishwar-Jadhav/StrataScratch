# arr = [1, 2, 4, 7, 7, 5]
# arr.sort()
# largest = arr[-1]
# print("first largest = ", largest)
# for i in range(0, len(arr), -1):
#     if arr[i] < largest:
#         largest = arr[i]
#         print("current largest = ", largest)
#     print(largest)


# arr = [1, 1, 2, 4, 6, 7, 8, 9]
# arr.sort()
# n = len(arr)
# # print(n)
# # print(arr[n - 1])
# for i in range(n - 2, -1, -1):
#     if arr[i] != arr[n - 1]:
#         print(arr[i])
#         break

arr = [1, 1, 2, 4, 6, 7, 8, 9]

n = len(arr)
largest = -1
secondLargest = -1

for i in range(n):
    if arr[i] > largest:
        largest = arr[i]
for i in range(n):
    if arr[i] > secondLargest and arr[i] != largest:
        secondLargest = arr[i]
print(secondLargest)

