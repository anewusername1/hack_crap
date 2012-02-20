def factorize(n)
  return [] if n == 1
  factor = (2..n).find {|x| n % x == 0}
  [factor] + factorize(n / factor)
end

numbers_to_test=[20,19,17,13,11,7,5,3,2]

def fib(n)
  (Matrix[ [1,1], [1,0] ]**(n-1)) [0,0]
end
