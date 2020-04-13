
require File.dirname(__FILE__) + '/test_helper'

class CoreExtTest < Yaffle
  def test_to_squawk_prepends_the_word_squawk
    assert_equal "squawk! Hello World", "Hello World".to_squawk
  end
end