#!/usr/bin/env ruby

require "test/unit"

COMMAND_LOCATION='./bookmark-toolbox > /dev/null'

class BasicTests < Test::Unit::TestCase
  def test_simple
    assert_true(system(COMMAND_LOCATION))
    assert_equal(0, $?.exitstatus)
  end

  def test_help
    assert_true(system(COMMAND_LOCATION))
    assert_equal(0, $?.exitstatus)
  end
end
