require 'spec_helper'

describe Libratonator::Parser do
  describe '#parse' do
    let(:parser) { Libratonator::Parser.new }
    let(:sample) { 'foo 12345 67890' }

    it 'should return an array' do
      parser.parse(sample).should be_kind_of(Array)
    end

    it 'should return an array with 3 elements' do
      parser.parse(sample).size.should eq(3)
    end
  end
end
