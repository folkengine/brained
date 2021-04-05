# frozen_string_literal: true

RSpec.describe Brained::String do
  context "wash" do
    it "should convert Cyrillic characters to Latin" do
      expect(Brained::String.wash("дерьмо")).to eq("der'mo")
    end

    it "should not convert Latin characters to Cyrillic" do
      expect(Brained::String.wash("der'mo")).to eq("der'mo")
    end
  end

  context "initialize" do
    it "should convert Cyrillic characters to Latin" do
      expect(Brained::String.new("Блядь ").value).to eq("Blqd'")
    end
  end

  context "to_str" do
    it "should treat the object as a string" do
      s = "#{Brained::String.new(" Блядь")} #{Brained::String.new("дерьмо  ")}"
      expect(s).to eq("Blqd' der'mo")
    end
  end
end
