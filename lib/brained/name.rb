module Brained
  # Brained::Name
  #
  # Brained Names have a maximum length of 12 characters and aren't allowed to have any internal spaces.
  #
  # TODO Get inheritance to work
  class Name
    attr_reader :value

    def initialize(value)
      @value = String(wash(value.strip))
    end

    def wash(value)
      Translit.convert(value[0, 11], :english)
    end

    def to_s
      value
    end

    def to_str
      value
    end
  end
end
