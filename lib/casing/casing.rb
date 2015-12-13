module Casing
  class Error < RuntimeError; end

  def call(val, values: nil)
    case val
      when ::Hash
        self::Hash.(val, values: values)

      when ::Array
        self::Array.(val, values: values)

      when ::String
        self::String.(val, values: values)

      when ::Symbol
        self::String.(val, values: values)

      else
        val
    end
  end

  # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
  def !(val, values: nil)
    call(val, values: nil)
  end

  def assure(val, values: nil)
    assured = case?(val, values: values)

    unless assured
      raise Casing::Error, "#{val} is not #{self.name.split('::').last.downcase}-cased"
    end

    nil
  end

  def case?(val, values: nil)
    values ||= false

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
        if values
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
