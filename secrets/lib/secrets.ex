defmodule Secrets do
  def secret_add(secret) do
     add = fn x -> x + secret end
     
  end

  def secret_subtract(secret) do
    sub = fn x -> x - secret end
  end

  def secret_multiply(secret) do
    mult = fn x -> x * secret end
  end

  def secret_divide(secret) do
    div = fn x -> trunc(x/secret) end
  end

  def secret_and(secret) do
    band = fn x -> Bitwise.band(x, secret) end
  end

  def secret_xor(secret) do
    xorer = fn x -> Bitwise.bxor(x, secret) end 
  end

  def secret_combine(secret_function1, secret_function2) do
    combine = fn x ->  secret_function2.(secret_function1.(x))   end

  end  
end
