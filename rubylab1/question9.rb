# (9) — Currency conversion.  

# Add capability to the class Numerics to support method calls such as:

# 5.dollars.in(:euros)
# 10.euros.in(:rupees)
# You should support the currencies dollars, euros, rupees, yen where the conversions are:

# rupees to dollars, multiply by 0.019,
# yen to dollars, multiply by 0.013,
# euro to dollars, multiply by 1.292.
# Both the singular and plural forms of each currency should be acceptable, e.g. 1.dollar.in(:rupees) and10.rupees.in(:euro) should work.

# You can use the code shown below as a starting point if you wish.  You might find it helpful to reread Section 3.5 of ESaaS before working on this problem.

class Numeric

 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}

 def method_missing(method_id)

   singular_currency = method_id.to_s.gsub( /s$/, '')

   if @@currencies.has_key?(singular_currency)

     self * @@currencies[singular_currency]

   else

     super

   end

 end

 def in(currency)

  currency = currency.to_s.gsub(/s$/, '')

  if @@currencies.has_key?(currency)
    self/@@currencies[currency]
  else
    super
  end

 end

end

p 5.dollars.in(:euros)
p 10.euros.in(:rupees)


 