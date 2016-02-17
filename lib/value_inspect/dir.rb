class Dir
  alias_method :original_inspect, :inspect

  def inspect
    "Dir.new(#{path.inspect})"
  end
end
