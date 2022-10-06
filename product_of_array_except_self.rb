# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    return nums if nums.empty?

  length = nums.length

  output = Array.new(length, 1)
  left_running_prod = 1

  # We filled left products first. Loop from L to R
  (0..length - 1).each do |i|
    output[i] = left_running_prod
    left_running_prod *= nums[i]
  end

  # Loop from R to L, we will now multiple right products
  right_running_prod = 1
  (length - 1).downto(0).each do |i|
    output[i] *= right_running_prod
    right_running_prod *= nums[i]
  end
  output
end

# using division
# ==============