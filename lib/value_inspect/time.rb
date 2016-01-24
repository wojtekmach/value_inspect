class Time
  alias_method :original_inspect, :inspect

  def inspect
    strftime("Time.new(%Y, %-d, %-m, %-H, %-M, %-S, \"%:z\")")
  end
end
