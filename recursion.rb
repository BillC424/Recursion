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
  if array.size > 1
    left = array.each_slice((array.size / 2.0).round).to_a[0]
    right = array.each_slice((array.size / 2.0).round).to_a[1]
end