# Intermodal Container Check Digit Calculator

This gem facilitates simple calculation of check digits on [intermodal shipping containers](https://en.wikipedia.org/wiki/Intermodal_container).

## Installation

Add this line to your application's Gemfile:

    gem 'intermodal_container_check_digit_calculator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install intermodal_container_check_digit_calculator

## Usage

```Ruby
prefix = "TOMU"
serial = "123456"

IntermodalContainerCheckDigitCalculator::Calculator.calculate(prefix, serial)
 # => "5"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## About Foraker Labs

<img src="http://assets.foraker.com/foraker_logo.png" width="400" height="62">

This project is maintained by Foraker Labs. The names and logos of Foraker Labs are fully owned and copyright Foraker Design, LLC.

Foraker Labs is a Boulder-based Ruby on Rails and iOS development shop. Please reach out if we can [help build your product](http://www.foraker.com).
