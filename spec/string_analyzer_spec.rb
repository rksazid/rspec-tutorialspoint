require 'string_analyzer'

describe StringAnalyzer do
  context "With valid input" do
    it "Should detect when a string contains vowels" do
      sa = StringAnalyzer.new
      test_string = 'uuu'
      expect(sa.has_vowels? test_string).to be true
    end

    it "Should detect when a string doesn't contain vowels" do
      sa = StringAnalyzer.new
      test_string = 'bcdfg'
      expect(sa.has_vowels? test_string).to be false
    end

    it "Should detect when the string contains upper and lowercase vowels and consonants" do
      sa = StringAnalyzer.new
      test_string = 'AbcdEfgHI'
      expect(sa.has_vowels? test_string).to be true
    end
  end
end
