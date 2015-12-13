module Casing
  class Pascal
    extend Casing

    def self.match?(val)
      !!((val =~ /^[A-Z]/) && (val =~ /[a-z]/))
    end
  end
end
