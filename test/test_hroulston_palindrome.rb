# frozen_string_literal: true

require "test_helper"

class TestHroulstonPalindrome < Minitest::Test
 
  def test_for_non_palindrome
    assert !"apple".palindrome?
  end
end
