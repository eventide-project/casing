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

  # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
  def !(val, include_values: nil, symbol_to_string: nil)
    call(val, include_values: include_values, symbol_to_string: symbol_to_string)
  end

  def case?(val, include_values: nil, symbol_to_string: nil)
    include_values ||= false
    symbol_to_string ||= false

    case val
      when ::Array
        val.each do |v|
          assured = case?(v, include_values: include_values, symbol_to_string: symbol_to_string)
          return false unless assured
        end

      when ::Hash
        val.each do |k, v|
          case_assured = value_cased?(k, symbol_to_string: symbol_to_string)
          return false unless case_assured

          assured = case?(v, include_values: include_values, symbol_to_string: symbol_to_string)
          return false unless assured
        end

      else
        if include_values
          case_assured = value_cased?(val, symbol_to_string: symbol_to_string)
          return false unless case_assured
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
      assured = match?(v)
      return false unless assured
    end

    true
  end
end
