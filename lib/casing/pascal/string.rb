module Casing
  module Pascal
    def self.!(str)
      str
        .to_s
        .gsub(/\/(.?)/) { "::" + $1.upcase }
        .gsub(/(^|_)(.)/) { $2.upcase }
    end
  end
end
