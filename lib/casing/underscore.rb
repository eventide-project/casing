module Casing
  class Underscore
    extend Casing

    def self.case?(val)
      !!((((val =~ /^[a-z]/) && (val =~ /_/)) || (val =~ /^[a-z]/)) && !(val =~ /[A-Z]/))
    end
  end
end
