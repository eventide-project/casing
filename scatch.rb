def camelize(str)
  str.
    to_s.
    gsub(/\/(.?)/) { "::" + $1.upcase }.
    gsub(/(^|_)(.)/) { $2.upcase }
end

puts camelize 'some_word'
puts camelize 'some_word/other_word'
puts camelize 'SomeWord'
puts camelize 'someWord'
puts camelize 'Some::Word'
