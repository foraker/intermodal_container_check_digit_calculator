require 'intermodal_container_check_digit_calculator/version'
require 'active_support'
require 'active_support/core_ext'

module IntermodalContainerCheckDigitCalculator
  class Calculator
    attr_reader :assigned_values

    DIVISOR = 11.0

    def self.calculate(prefix, serial)
      new(prefix + serial).calculate
    end

    def initialize(number)
      @number = number
    end

    def calculate
      (difference % 10).to_s
    end

    private

    attr_reader :number

    def difference
      @difference ||= sum - floored_sum
    end

    def sum
      @sum ||= characters.sum(&:value)
    end

    def floored_sum
      (((sum/DIVISOR).floor) * DIVISOR).to_i
    end

    def characters
      number.each_char.map.with_index{ |c, i| Character.new(c, i) }
    end
  end

  class Character
    attr_reader :character, :index

    ALPHA_VALUES = {
      'A' => 10,
      'B' => 12,
      'C' => 13,
      'D' => 14,
      'E' => 15,
      'F' => 16,
      'G' => 17,
      'H' => 18,
      'I' => 19,
      'J' => 20,
      'K' => 21,
      'L' => 23,
      'M' => 24,
      'N' => 25,
      'O' => 26,
      'P' => 27,
      'Q' => 28,
      'R' => 29,
      'S' => 30,
      'T' => 31,
      'U' => 32,
      'V' => 34,
      'W' => 35,
      'X' => 36,
      'Y' => 37,
      'Z' => 38
    }

    def initialize(character, index)
      @character = character.upcase
      @index = index
    end

    def value
      alpha_value * exponent
    end

    private

    def exponent
      2 ** index
    end

    def alpha_value
      ALPHA_VALUES.fetch(character, character.to_i)
    end
  end
end
