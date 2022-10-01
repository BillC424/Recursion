def fibs(n)
  fibonacci_array = []
  n.times do
    if fibonacci_array == []
      fibonacci_array.push(0)
    elsif fibonacci_array == [0] 
    fibonacci_array.push(1)
    else
    fibonacci_array.push(fibonacci_array[-1] + fibonacci_array[-2]) if fibonacci_array.length >= 2
    end
  end  
  fibonacci_array
end

def fibs_rec(n, fibonacci=[0,1])
    return fibonacci[0..-3] if n == 0
    fibonacci.push(fibonacci[-1] + fibonacci[-2])
    fibs_rec(n - 1, fibonacci)
end

def merge_sort(array)
  ## Base case
  return array if array.length <= 1
  
  # Recursive case
  
  # Splits array as evenly as possible
  p left = array.each_slice((array.size / 2.0).round).to_a[0]
  p right = array.each_slice((array.size / 2.0).round).to_a[1]
  
  # Recurusively call method on both sides of array
  left = merge_sort(left)
  right = merge_sort(right)
  
  # Empty array to store sorted solution in 
  result = []
  
  # Compares the first element in the left and right arrays and adds lowest element to result array.
  # If an element is added to the results array, it is also deleted from the left/right array so that the loop is not infinite. 
  while left != [] && right != [] do
    if left[0] < right[0]
      result.push(left[0])
      left.delete_at(0)
    else
      result.push(right[0])
      right.delete_at(0)
    end
  end
  
  # These two loops add remaining elements to result array when either the left or right array are empty. 
  while left != [] do
    result.push(left[0])
    left.delete_at(0)
  end
  
  while right != [] do
    result.push(right[0])
    right.delete_at(0)
  end
    
  # Returns sorted solution 
  result
end