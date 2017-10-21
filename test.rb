#!/bin/ruby

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
