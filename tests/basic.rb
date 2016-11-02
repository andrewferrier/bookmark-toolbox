#!/usr/bin/env ruby

require "test/unit"

class BasicTests < Test::Unit::TestCase
  def test_simple
    assert_equal(1, 1)
  end
end
