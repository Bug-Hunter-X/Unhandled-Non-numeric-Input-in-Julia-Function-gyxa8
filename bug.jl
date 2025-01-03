```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return 0
  end
end

x = -1
y = my_function(x)
println(y) # Output: 0

x = 2
y = my_function(x)
println(y) # Output: 4

#This function works as expected, but there is a potential for error if the user inputs a non-numeric value.

function my_function_with_error_handling(x)
  try
    if x > 0
      return x^2
    else
      return 0
    end
  catch
    println("Error: Input must be a number.")
    return NaN
  end
end

x = "abc"
y = my_function_with_error_handling(x) #This will cause an error
println(y) # Output: Error: Input must be a number.
NaN
```