class Struct
  alias_method :original_inspect, :inspect

  def inspect
    "%s.new(%s)" % [self.class.name, values.map(&:inspect).join(", ")]
  end
end
