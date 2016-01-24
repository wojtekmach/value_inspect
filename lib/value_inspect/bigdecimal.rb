class BigDecimal
  alias_method :original_inspect, :inspect

  def inspect
    "BigDecimal(\"%s\")" % to_s('F')
  end
end
