# frozen_string_literal: true

require_relative "hroulston_palindrome/version"

module HroulstonPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  #Method should return the letters from a string
  #Completely refactored method
  #Can actually delete method and go further creating 
  #the pattern matching in processed content.
  # def letters
  #   chars.select { |c| c.match(/[a-z]/i) }.join
  # end

  private
    
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include HroulstonPalindrome
end

class Integer
  include HroulstonPalindrome
end