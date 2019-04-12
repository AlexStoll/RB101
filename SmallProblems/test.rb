def find_missing(arr1, arr2)
  arr1.size > arr2.size ? arr1 - arr2 : arr2 - arr1
end

big_list = [4, 12, 9, 5, 6]
shorter_list = [4, 9, 12, 6]

p find_missing(big_list, shorter_list)

p (1..20).to_a[5 - 1]