module Casing
  class Error < RuntimeError; end

  def call(val, values: nil, preserve_symbols: nil)
    case val
      when ::Hash
        self::Hash.(val, values: values, preserve_symbols: preserve_symbols)

      when ::Array
        self::Array.(val, values: values, preserve_symbols: preserve_symbols)

      when ::String
        self::String.(val, values: values, preserve_symbols: preserve_symbols)

      when ::Symbol
        self::String.(val, values: values, preserve_symbols: preserve_symbols)

      else
        val
    end
  end

  # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
  def !(val, values: nil, preserve_symbols: nil)
    call(val, values: values, preserve_symbols: preserve_symbols)
  end

  def case?(val, values: nil, symbols: nil)
    values ||= false
    symbols ||= false

    case val
      when ::Array
        val.each do |v|
          assured = case?(v, values: values, symbols: symbols)
          return false unless assured
        end

      when ::Hash
        val.each do |k, v|
          case_assured = value_cased?(k, symbols: symbols)
          return false unless case_assured

          assured = case?(v, values: values, symbols: symbols)
          return false unless assured
        end

      else
        if values
          case_assured = value_cased?(val, symbols: symbols)
          return false unless case_assured
        end
    end

    true
  end

  def value_cased?(val, symbols: nil)
    symbols ||= false

    if symbols && !val.is_a?(Symbol)
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
