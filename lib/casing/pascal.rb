module Casing
  class Pascal
    extend Casing

    def self.case?(val)
      !!((val =~ /^[A-Z]/) && (val =~ /[a-z]/))
    end
  end
end
