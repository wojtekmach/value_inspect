require "bigdecimal"
require "values"
require "date"
require "test_helper"

Person = Struct.new :name, :age
Post = Value.new :title

class ValueInspectTest < Minitest::Spec
  it "supports Struct" do
    john = Person.new("John Doe", 20)
    john.inspect.must_equal "Person.new(\"John Doe\", 20)"
    john.original_inspect.must_equal "#<struct Person name=\"John Doe\", age=20>"
  end

  it "supports Time" do
    time = Time.new(1970, 1, 31, 0, 0, 0, "+01:00")
    time.inspect.must_equal "Time.new(1970, 1, 31, 0, 0, 0, \"+01:00\")"
    time.original_inspect.must_equal "1970-01-31 00:00:00 +0100"
  end

  it "supports Date" do
    date = Date.new(1970, 1, 31)
    date.inspect.must_equal "Date.new(1970, 1, 31)"
    date.original_inspect.must_equal "#<Date: 1970-01-31 ((2440618j,0s,0n),+0s,2299161j)>"
  end

  it "supports DateTime" do
    date = DateTime.new(1970, 1, 31)
    date.inspect.must_equal "DateTime.new(1970, 1, 31)"
    date.original_inspect.must_equal "#<DateTime: 1970-01-31T00:00:00+00:00 ((2440618j,0s,0n),+0s,2299161j)>"
  end

  it "supports BigDecimal" do
    pi = BigDecimal("3.14")
    pi.inspect.must_equal "BigDecimal(\"3.14\")"
    pi.original_inspect.must_match /#<BigDecimal:(.{12}),'0.314E1',18\(18\)>/
  end

  it "supports Value" do
    post = Post.new("Lorem Ipsum")
    post.inspect.must_equal "Post.new(\"Lorem Ipsum\")"
    post.original_inspect.must_equal "#<Post title=\"Lorem Ipsum\">"
  end
end
