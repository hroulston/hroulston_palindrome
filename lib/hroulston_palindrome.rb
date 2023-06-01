# frozen_string_literal: true

require_relative "hroulston_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  #Method should return the letters from a string
  def letters
    the_letters = []
    #Round 1 for loop to get test to pass
    for i in 0..self.length - 1 do
      if self[i].match(/[a-zA-z]/)
        the_letters << self[i]
      end
    end
    #Now having the letters they are rejoined into a string
    the_letters.join
  end

  private
    
    def processed_content
      self.letters.downcase
    end
end