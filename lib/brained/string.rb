require "translit"

module Brained
  # Brainded::String
  #
  # The foundation Brained String only accepts ascii characters.
  #
  # So for it will convert Cyrillic characters to Latin.
  class String
    attr_reader :value

    def initialize(value)
      @value = String(String.wash(value.strip))
    end

    def to_s
      value
    end

    def to_str
      value
    end

    def self.wash(value)
      Translit.convert(value, :english)
    end
  end
end
