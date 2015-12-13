module Casing
  class Error < RuntimeError; end

  def call(val, convert_values: nil)
    case val
      when ::Hash
        self::Hash.(val, convert_values: convert_values)

      when ::Array
        self::Array.(val, convert_values: convert_values)

      when ::String
        self::String.(val, convert_values: convert_values)

      when ::Symbol
        self::String.(val, convert_values: convert_values)

      else
        val
    end
  end

  # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
  def !(val, convert_values: nil)
    call(val, convert_values: nil)
  end

  def assure(val, assure_values: nil)
    assured = case?(val, assure_values: assure_values)

    unless assured
      raise Casing::Error, "#{val} is not #{self.name.split('::').last.downcase}-cased"
    end

    nil
  end

  def case?(val, assure_values: nil, values: nil)
    assure_values ||= false
    values ||= assure_values

    case val
      when ::Array
        val.each do |v|
          assured = case?(v, values: values)
          return false unless assured
        end

      when ::Hash
        val.each do |k, v|
          case_assured = value_cased?(k)
          return false unless case_assured

          assured = case?(v, values: values)
          return false unless assured
        end

      else
        if assure_values
          case_assured = value_cased?(val)
          return false unless case_assured
        end
    end

    true
  end

  def value_cased?(val)
    val.split.each do |v|
      assured = match?(v)
      return false unless assured
    end

    true
  end
end
