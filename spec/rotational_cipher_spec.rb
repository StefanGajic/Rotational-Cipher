require 'rotational_cipher'

describe CeasarChiper do

  describe '.caesar_cipher' do
    context "encrypt 'omg' 5 times" do
      it "returns 'trl'" do
        expect(CeasarChiper.new("omg", 5).caesar_cipher).to eql("trl")
      end
    end

    context "encrypt 'c' 0 times" do
      it "returns 'c'" do
        expect(CeasarChiper.new("c", 0).caesar_cipher).to eql("c")
      end
    end

    context "encrypt 'Cool' 26 times" do
      it "returns 'Cool'" do
        expect(CeasarChiper.new("Cool", 26).caesar_cipher).to eql("Cool")
      end
    end

    context "encrypt 'The quick brown fox jumps over the lazy dog' 13 times" do
        it "returns 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt'" do
          expect(CeasarChiper.new("The quick brown fox jumps over the lazy dog", 13).caesar_cipher).to eql("Gur dhvpx oebja sbk whzcf bire gur ynml qbt")
        end
      end

      context "encrypt 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt' 13 times" do
        it "returns 'The quick brown fox jumps over the lazy dog'" do
          expect(CeasarChiper.new("Gur dhvpx oebja sbk whzcf bire gur ynml qbt", 13).caesar_cipher).to eql("The quick brown fox jumps over the lazy dog")
        end
      end

  end
end
