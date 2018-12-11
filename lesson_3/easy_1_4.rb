numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
# This will delete at numbers[1], or the value 2.
numbers.delete(1)
# This will delete the value 1.

# Important to note that these modify the caller, but don't carry a !