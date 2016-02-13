#By considering the terms in the Fibonacci sequence whose
#values do not exceed four million, find the sum of the
#even-valued terms.

def fibonacci(num)
	
  total = 0
  even_numbers= [1,2]
	
   while total <= 4000000
	
   total = even_numbers[-2] + even_numbers[-1]
   even_numbers.push(total)
	
   end
    
   i = 0
  
   while i < even_numbers.length
	
	if even_numbers[i] % 2 != 0
	  even_numbers[i] = 0
	end
	
	i += 1
   end
	 return even_numbers.inject(:+)
end

fibonacci(2)