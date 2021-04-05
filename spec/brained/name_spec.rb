# frozen_string_literal: true

RSpec.describe Brained::Name do
  context "wash" do
    it "concantenates strings longer than 12 characters" do
      name = Brained::Name.new("по́мнюизвчера́шнегодня")
      expect(name.to_s).to eq("pómnüizwche")
    end
  end

  context "initialize" do
    it "should convert Cyrillic characters to Latin" do
      expect(Brained::Name.new("Блядь ").value).to eq("Blqd'")
    end
  end

  context "to_str" do
    it "should treat the object as a string" do
      s = "#{Brained::Name.new(" Блядь")} #{Brained::Name.new("дерьмо  ")}"
      expect(s).to eq("Blqd' der'mo")
    end
  end
end
