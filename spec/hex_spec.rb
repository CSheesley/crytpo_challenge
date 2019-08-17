require 'spec_helper'

RSpec.describe Hex, type: :model do
  describe 'Instance Methods' do

    context '#decoded' do
      it 'decodes an encoded hex string' do
        hex = Hex.new("49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d")
        expected = "I'm killing your brain like a poisonous mushroom"

        expect(hex.decoded).to eq(expected)
      end
    end

    context '#to_base_64' do
      it 'converts an encoded hex string to encoded base64 string' do
        hex = Hex.new("49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d")
        expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

        expect(hex.to_base_64).to eq(expected)
      end
    end

  end
end
