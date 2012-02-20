def factorize(n)
  return [] if n == 1
  factor = (2..n).find {|x| n % x == 0}
  [factor] + factorize(n / factor)
end

def fib(n)
  (Matrix[ [1,1], [1,0] ]**(n-1)) [0,0]
end

def sieve_upto(top)
  sieve = []
  for i in 2 .. top
    sieve[i] = i
  end
  for i in 2 .. Math.sqrt(top)
    next unless sieve[i]
    (i*i).step(top, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact
end

