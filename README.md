# ValueInspect

Provides implementation of #inspect that is more readable and can be used in irb. Especially useful for BigDecimal#inspect.

## Usage

**without** this gem:

```ruby
Person = Struct.new :name, :age

Date.new(1970, 1, 1).inspect
# => #<Date: 1970-01-01 ((2440588j,0s,0n),+0s,2299161j)>

BigDecimal("3.14").inspect
# => #<BigDecimal:7f97bb1cd658,'0.314E1',18(18)>

Person.new("John Doe", 20).inspect
# => #<struct Person name=\"John Doe\", age=20>
```

**with** this gem:

```ruby
# remember to put `require "value_inspect"` *after* e.g. `require "bigdecimal"`
require "value_inspect"

Person = Struct.new :name, :age

Date.new(1970, 1, 1).inspect
# => Date.new(1970, 1, 1)

BigDecimal("3.14").inspect
# => BigDecimal("3.14")

Person.new("John Doe", 20).inspect
# => Person.new("John Doe", 20)

# original implementation is still available:
Date.new(1970, 1, 1).original_inspect
# => #<Date: 1970-01-01 ((2440588j,0s,0n),+0s,2299161j)>
```

## Supported classes

Core:
* "basic" classes like `Integer`, `String`, `Array` etc "just work"
* `Dir`
* `File`
* `Struct`
* `Time`

Standard library:
* `BigDecimal`
* `Date`
* `DateTime`
* `Pathname`

Gems:
* [`Value`](https://github.com/tcrayford/Values)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'value_inspect'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install value_inspect

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/wojtekmach/value_inspect>.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
