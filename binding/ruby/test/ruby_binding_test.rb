require "test_helper"

class RubyBindingTest < Minitest::Test
  def test_it_reverses
    assert_equal "selppa", RubyExample.reverse("apples")
  end
end