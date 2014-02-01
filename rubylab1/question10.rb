# (10a)— Palindromes: Adapt your solution from the "palindromes" question so that instead of writing palindrome?("foo") you can write "foo".palindrome? (Hint: this should require fewer than 5 lines of code.)

class String

  def palindrome?

      clean_string = self.downcase.gsub(/[^a-z]/, '') #remove anything that is not a letter
      clean_string.reverse == clean_string

  end

end

#"foof".palindrome?
# (10b) — Palindromes again: Adapt your palindrome solution so that it works on Enumerables. That is:
# [1,2,3,2,1].palindrome? # => true

module Enumerable

  def palindrome?

      if self.kind_of? Array 
        self == self.reverse
      else
        self.to_a.palindrome?
      end

  end

end

# It's not necessary for the collection's elements to be palindromes themselves--only that the top-level collection be a palindrome. (Hint: this should require fewer than 5 lines of code.) Although hashes are considered Enumerables, your solution does not need to work with hashes, though it should not error.

#p [1,2,3,2,1].palindrome? 