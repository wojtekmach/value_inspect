require "value_inspect/version"

require "value_inspect/struct"
require "value_inspect/bigdecimal" if defined? BigDecimal
require "value_inspect/time"
require "value_inspect/date" if defined? Date
require "value_inspect/values" if defined? Value
