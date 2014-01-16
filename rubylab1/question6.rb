# Strings & Regular Expressions

# (6). Write a function called glob_match(filenames, pattern), which takes an array of filename strings and a glob pattern string and returns an array of the filenames that match the following UNIX glob rules:

# *: matches zero or more characters,

# ?: marks the preceding character optional,

# [abc]: matches a, b, or c

# Ex: glob_match(

# [“part1.rb”, “part2.rb”, “part2.rb~”, “.part3.rb.un~”],

# “*part*rb?*”)

#                # ==> [“part2.rb~”, “.part3.rb.un~”]

# (Hint: use gsub to replace string subsequences)