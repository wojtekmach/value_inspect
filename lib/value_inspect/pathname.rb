class Pathname
  alias_method :original_inspect, :inspect

  def inspect
    "Pathname(#{to_s.inspect})"
  end
end
