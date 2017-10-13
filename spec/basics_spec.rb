require 'cryptopals-ruby/cryptopals-ruby'


describe 'Cryptopals' do
  let(:dummy_class) { Class.new { include Cryptopals::Basics}.new }

  describe 'Cryptopals::Basics' do
    describe '#hex_to_b64' do
      it 'should match the expected result' do
        expect(dummy_class.hex_to_b64('49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d')).to eq 'SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t'
      end
    end

    describe '#fixed_xor' do

      context 'Strings match' do
        it 'should match the expected result' do
          expect(dummy_class.fixed_xor('1c0111001f010100061a024b53535009181c','686974207468652062756c6c277320657965')).to eq '746865206b696420646f6e277420706c6179'
        end
      end

      context 'Strings don\'t match' do
        it 'should raise ArgumentError' do
          expect{dummy_class.fixed_xor('abc', 'de')}.to raise_exception(ArgumentError, 'Strings not equal')
        end
      end

    end
  end
end
