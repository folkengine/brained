# frozen_string_literal: true

require "translit"

module Brained
  # Brained::String
  #
  # The foundation Brained String only accepts ascii characters.
  #
  # So for it will convert Cyrillic characters to Latin.
  class String
    attr_reader :value

    def initialize(value)
      @value = String(wash(value.strip))
    end

    def wash(value)
      Translit.convert(value, :english)
    end

    def to_s
      value
    end

    def to_str
      value
    end
  end
end
