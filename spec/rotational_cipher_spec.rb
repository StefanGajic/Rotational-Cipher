require 'rotational_cipher'

describe RotationalCipher do

  describe '.encrypt' do
    context "encrypt 'omg' 5 times" do
      it "returns 'trl'" do
        expect(RotationalCipher.new(5).encrypt("omg")).to eql("trl")
      end
    end

    context "encrypt 'c' 0 times" do
      it "returns 'c'" do
        expect(RotationalCipher.new(0).encrypt("c")).to eql("c")
      end
    end

    context "encrypt 'Cool' 26 times" do
      it "returns 'Cool'" do
        expect(RotationalCipher.new(26).encrypt("Cool")).to eql("Cool")
      end
    end

    context "encrypt 'The quick brown fox jumps over the lazy dog' 13 times" do
      it "returns 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt'" do
        expect(RotationalCipher.new(13).encrypt("The quick brown fox jumps over the lazy dog")).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt")
      end
    end

    context "encrypt 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt' 13 times" do
      it "returns 'The quick brown fox jumps over the lazy dog'" do
        expect(RotationalCipher.new(13).encrypt("Gur dhvpx oebja sbk whzcf bire gur ynml qbt")).to eql("The quick brown fox jumps over the lazy dog")
      end
    end

  end
end
