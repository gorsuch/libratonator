require 'spec_helper'

describe Libratonator::Parser do
  describe '#parse' do
    let(:parser) { Libratonator::Parser.new }
    let(:sample) { 'foo 12345 67890' }

    it 'should return a hash' do
      parser.parse(sample).should be_kind_of(Hash)
    end
  end
end
