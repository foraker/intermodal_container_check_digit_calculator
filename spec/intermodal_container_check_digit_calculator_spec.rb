require 'active_support'
require 'active_support/core_ext'
require 'intermodal_container_check_digit_calculator'

module IntermodalContainerCheckDigitCalculator
  describe Calculator do
    describe ".calculate" do
      test_cases =
      [
        {prefix: "CSQU", serial: "305438", output: "3"},
        {prefix: "ABCD", serial: "123456", output: "0"},
        {prefix: "DEFG", serial: "768901", output: "7"},
        {prefix: "HIJK", serial: "234567", output: "2"},
        {prefix: "LMNO", serial: "890123", output: "1"},
        {prefix: "PQRS", serial: "456789", output: "8"},
        {prefix: "TUVW", serial: "012345", output: "8"},
        {prefix: "XYZA", serial: "678901", output: "0"}
      ]

      test_cases.each do |test_case|
        it "should correctly calculate a checksum with #{test_case[:prefix]}#{test_case[:serial]}" do
          calculate(test_case[:prefix], test_case[:serial], test_case[:output])
        end
      end
    end

    def calculate(prefix, serial, output)
      expect(described_class.calculate(prefix, serial)).to eq(output)
    end
  end
end
