require File.expand_path(File.dirname(__FILE__) + '/../util.rb')

primes = sieve_upto(2_000_000)
puts primes.inject(:+)
