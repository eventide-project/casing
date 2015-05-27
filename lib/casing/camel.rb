module Casing
  module Camel
    def self.!(str)
      str.
        chars.first.downcase +
        Pascal.!(str)[1..-1]
    end
  end
end
