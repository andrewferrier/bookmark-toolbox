#!/usr/bin/env ruby

require 'test/unit'

COMMAND_LOCATION = './bookmark-toolbox > /dev/null'.freeze

# These are basic tests
class BasicTests < Test::Unit::TestCase
  def test_simple
    assert_true(system(COMMAND_LOCATION))
    assert_equal(0, $CHILD_STATUS.exitstatus)
  end

  def test_help
    assert_true(system(COMMAND_LOCATION))
    assert_equal(0, $CHILD_STATUS.exitstatus)
  end
end
