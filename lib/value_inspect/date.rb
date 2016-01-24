class Date
  alias_method :original_inspect, :inspect

  def inspect
    "Date.new(%s, %s, %s)" % [year, month, day]
  end
end

class DateTime
  def inspect
    strftime("DateTime.new(%Y, %-m, %-d, %-H, %-M, %-S, \"%:z\")")
  end
end
