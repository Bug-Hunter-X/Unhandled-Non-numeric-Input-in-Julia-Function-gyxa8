```julia
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
y = my_function_with_error_handling(x)
println(y) # Output: Error: Input must be a number.
NaN

x = 2
y = my_function_with_error_handling(x)
println(y) # Output: 4

x = -1
y = my_function_with_error_handling(x)
println(y) # Output: 0
```