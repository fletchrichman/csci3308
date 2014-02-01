# Strings & Regular Expressions

# (6). Write a function called glob_match(filenames, pattern), which takes an array of filename strings and a glob pattern string and returns an array of the filenames that match the following UNIX glob rules:

# *: matches zero or more characters,

# ?: marks the preceding character optional,

# [abc]: matches a, b, or c

# Ex: glob_match(

# [“part1.rb”, “part2.rb”, “part2.rb~”, “ ”],

# “*part*rb?*”)

#                # ==> [“part2.rb~”, “.part3.rb.un~”]

# (Hint: use gsub to replace string subsequences)

def glob_match(filenames, pattern)

  #replace * because current pattern doesn't specify which character it should repeat

  pattern.gsub!(/[\*\.]/, '*' => '.*', '.' => '\.')
  if pattern.include? "?"
    split_pattern = pattern.split('?')
    split_pattern.first[-1] = ".*"
    split_pattern[1] ||= ''
    pattern = split_pattern[0] + split_pattern[1]
  end
  reg_pattern = Regexp.new(pattern)

  results = Array.new

 filenames.each do |filename| 

    if filename.match(reg_pattern).post_match.empty? and filename.match(reg_pattern).pre_match.empty?
      results << filename
    end
  end
  results
end

# filenames = ['part1.rb', 'part2.r', 'part2.rb~', '.part3.rb.un~']
# pattern = '*part*rb?'

# p glob_match(filenames, pattern)