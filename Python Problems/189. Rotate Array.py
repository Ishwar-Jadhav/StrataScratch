nums = [1,2,3,4,5,6,7]
k = 3
# Output: [5,6,7,1,2,3,4]

for i in range(1, len(nums)):
    nums[i - 1] = nums[i]

print(nums)