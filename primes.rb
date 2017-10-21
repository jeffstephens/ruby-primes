#!/usr/local/bin/ruby

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

def enumerateSmallerPrimes(n)
  primeList = []
  for i in 1..n
    if isPrime i
      primeList.push i
    end
  end
  return primeList
end

if ARGV.length >= 0
  puts(enumerateSmallerPrimes(ARGV[0].to_i).join(", "))
end
