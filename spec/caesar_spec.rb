require 'spec_helper'
require_relative '../src/caesar'

Rspec.describe 'Caesar exercise tests' do
  describe 'Turn "What a string!" into "Bmfy f xywnsl!"' do
    it 'returns "Bmfy f xywnsl!' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end
  end
end
