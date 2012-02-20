require File.expand_path(File.dirname(__FILE__) + '/../util.rb')
primes = []
start = 1000
while(primes.length < 10002)
  new_primes = sieve_upto(start)
  primes = new_primes
  start += 1000
end
puts primes[10000] # zero based array
