require 'test/unit/assetion'
include Test::Unit::Assertion

hello = 'world'

assert_equal 'world', hello, "hello function should return 'world'"