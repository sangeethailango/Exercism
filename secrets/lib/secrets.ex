defmodule Secrets do
  def secret_add(secret) do
    fn add -> add + secret end
  end

  def secret_subtract(secret) do
    fn sub -> sub - secret end
  end

  def secret_multiply(secret) do
    fn mult -> mult * secret end
  end

  def secret_divide(secret) do
    fn div -> trunc(div/secret) end
  end

  def secret_and(secret) do
    fn band -> Bitwise.band(band, secret) end
  end

  def secret_aor(secret) do
    fn baor -> Bitwise.baor(baor, secret) end 
  end

  def secret_combine(fun1, fun2) do
    fn combine ->  fun2.(fun1.(combine))   end
  end  
end
