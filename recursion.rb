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