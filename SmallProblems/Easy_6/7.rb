def show_multiplicative_average(arr)
  format('%.3f', arr.inject(:*) / arr.size.to_f)
end

p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == '28361.667'