require './lib/caesar_cipher'

describe CaesarCipher do
  describe '.shift' do
    it 'returns shifted string given a shift factor' do
      shifted = subject.class.shift('What a string!', 5)

      expect(shifted).to eq 'Bmfy f xywnsl!'
    end

    it 'returns differently with another shift factor' do
      shifted = subject.class.shift('What a string!', 3)

      expect(shifted).to eql 'Zkdw d vwulqj!'
    end
  end
end
