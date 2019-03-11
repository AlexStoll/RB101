def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end


p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
