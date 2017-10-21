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

  def test_zero
    assert_false isPrime(0)
  end
end

class TestPrimeEnumeration < Test::Unit::TestCase
  def test_allprime
    allPrimes = enumerateSmallerPrimes 3
    assert_equal 3, allPrimes.length
  end

  def test_ten
    toTen = enumerateSmallerPrimes 10
    assert_equal 5, toTen.length
  end
end
