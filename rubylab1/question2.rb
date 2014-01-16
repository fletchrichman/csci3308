# (2) — Palindromes: Write a method palindrome?(string) that determines whether a given string (word or phrase) is a palindrome, that is, it reads the same backwards as forwards, ignoring case, punctuation, and nonword characters. (A "nonword character" is defined for our purposes as "a character that Ruby regexps would treat as a nonword character".)

# The structure of your code should look as follows:

def palindrome?(string)

    # your code here

end

# Your solution shouldn't use loops or iteration of any kind. Instead, you will find regular-expression syntax very useful; it's reviewed briefly in the book, and the website rubular.com lets you try out Ruby regular expressions "live". Some methods that you might find useful (which you'll have to look up in Ruby documentation, ruby-doc.org) include: String#downcase,  String#gsub,  String#reverse.

# Example test cases:

# palindrome?("A man, a plan, a canal -- Panama")  # => true

# palindrome?("Madam, I'm Adam!")                  # => true

# palindrome?("Abracadabra")                       # => false (nil is also ok)

