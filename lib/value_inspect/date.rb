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
