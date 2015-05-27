module Casing
  module Camel
    def self.!(str)
      str
        .to_s
        .chars.first.downcase +
          Pascal.!(str)[1..-1]
    end
  end
end
