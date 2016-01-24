class Time
  alias_method :original_inspect, :inspect

  def inspect
    strftime("Time.new(%Y, %-m, %-d, %-H, %-M, %-S, \"%:z\")")
  end
end
