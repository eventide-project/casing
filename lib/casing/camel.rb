module Casing
  class Camel
    extend Casing

    def self.case?(val)
      (val =~ /^[a-z]/) && !(val =~ /_/)
    end
  end
end
