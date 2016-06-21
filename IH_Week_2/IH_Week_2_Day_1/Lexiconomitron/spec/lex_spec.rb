# lex_spec.rb

require_relative("../lib/lex.rb")

describe Lexiconomitron do 
  describe "eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
end


  describe "shazam" do
    it "reverses and removes middle words" do
      @lexi = Lexiconomitron.new
      expect(@lexi.shazam(["great", "scott!"])).to eq(["aerg", "!ocs"])
    end
  
end

 
  describe "oompa_loompa" do
    it "removes words greater than 3 characters" do
      @lexi = Lexiconomitron.new
      expect(@lexi.oompa_loompa(["great", "scott"])).to eq(["sco"])
    end
  
end