#!/usr/bin/ruby

def isPrime(n)
  if n == 0
    return false
  end

  for i in 2..n/2
    if n % i == 0
      return false
    end
  end

  return true
end
