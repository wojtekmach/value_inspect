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
