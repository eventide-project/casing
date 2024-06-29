module Casing
  class Error < RuntimeError; end

  def call(val, include_values: nil, symbol_to_string: nil)
    case val
      when ::Hash
        self::Hash.(val, include_values: include_values, symbol_to_string: symbol_to_string)

      when ::Array
        self::Array.(val, include_values: include_values, symbol_to_string: symbol_to_string)

      when ::String
        self::String.(val, include_values: include_values, symbol_to_string: symbol_to_string)

      when ::Symbol
        self::String.(val, include_values: include_values, symbol_to_string: symbol_to_string)

      else
        val
    end
  end

  def case?(val, include_values: nil, symbol_to_string: nil)
    include_values ||= false
    symbol_to_string ||= false

    case val
      when ::Array
        val.each do |v|
          cased = case?(v, include_values: include_values, symbol_to_string: symbol_to_string)
          return false unless cased
        end

      when ::Hash
        val.each do |k, v|
          value_cased = value_cased?(k, symbol_to_string: symbol_to_string)
          return false unless value_cased

          cased = case?(v, include_values: include_values, symbol_to_string: symbol_to_string)
          return false unless cased
        end

      else
        if include_values
          value_cased = value_cased?(val, symbol_to_string: symbol_to_string)
          return false unless value_cased
        end
    end

    true
  end

  def value_cased?(val, symbol_to_string: nil)
    symbol_to_string ||= false

    if symbol_to_string && val.is_a?(Symbol)
      return false
    end

    val = val.to_s

    val.split.each do |v|
      cased = match?(v)
      return false unless cased
    end

    true
  end
end
