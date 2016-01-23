require "value_inspect/version"

class Struct
  alias_method :original_inspect, :inspect

  def inspect
    "%s.new(%s)" % [self.class.name, values.map(&:inspect).join(", ")]
  end
end

if defined? BigDecimal
  class BigDecimal
    alias_method :original_inspect, :inspect

    def inspect
      "BigDecimal(\"%s\")" % to_s('F')
    end
  end
end

class Time
  alias_method :original_inspect, :inspect

  def inspect
    strftime("Time.new(%Y, %-d, %-m, %-H, %-M, %-S, \"%:z\")")
  end
end

if defined? Date
  class Date
    alias_method :original_inspect, :inspect

    def inspect
      "Date.new(%s, %s, %s)" % [year, month, day]
    end
  end

  class DateTime
    def inspect
      "DateTime.new(%s, %s, %s)" % [year, month, day]
    end
  end
end

if defined? Value
  module ValueInspect
    module Values
      module ClassMethods
        def new(*args)
          cls = super
          cls.send(:alias_method, :original_inspect, :inspect)
          cls.prepend InstanceMethods
          cls
        end
      end

      module InstanceMethods
        def inspect
          "%s.new(%s)" % [self.class.name, values.map(&:inspect).join(", ")]
        end
      end
    end
  end

  class Value
    class << self
      prepend ValueInspect::Values::ClassMethods
    end
  end
end

