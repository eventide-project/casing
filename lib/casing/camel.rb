module Casing
  class Camel
    extend Casing

    def self.match?(val)
      (val =~ /^[a-z]/) && !(val =~ /_/)
    end
  end
end
