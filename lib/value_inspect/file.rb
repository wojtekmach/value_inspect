class File
  alias_method :original_inspect, :inspect

  def inspect
    "File.new(#{path.inspect})"
  end
end
