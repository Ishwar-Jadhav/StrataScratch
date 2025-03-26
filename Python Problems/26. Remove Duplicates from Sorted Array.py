nums = [1, 2, 3, 3, 4, 4, 4, 5]
# print(len(nums))
l = 1

for r in range(1, len(nums)):
    if nums[r] != nums[r - 1]:
        nums[l] = nums[r]
        l+=1
print("Distinct numbers are: ", l)