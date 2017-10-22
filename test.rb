#!/usr/local/bin/ruby

require 'test/unit'
include Test::Unit::Assertions
require_relative 'primes.rb'

class TestPrimes < Test::Unit::TestCase
  def test_nonprimes
    assert_false isPrime(4)
    assert_false isPrime(50)
  end

  def test_primes
    assert_true isPrime(7)
    assert_true isPrime(2)
  end

  def test_toosmall
    assert_false isPrime(0)
    assert_false isPrime(1)
  end
end

class TestPrimeEnumeration < Test::Unit::TestCase
  def test_toosmall
    allPrimes = enumerateSmallerPrimes 3
    assert_equal 2, allPrimes.length
  end

  def test_max_is_prime
    allPrimes = enumerateSmallerPrimes 7
    assert_equal [2, 3, 5, 7], allPrimes
  end

  def test_ten
    toTen = enumerateSmallerPrimes 10
    assert_equal 4, toTen.length
  end
end
