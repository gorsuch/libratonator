require 'spec_helper'

describe Libratonator::Parser do
  describe '#parse' do
    let(:parser) { Libratonator::Parser.new }
    let(:sample) { 'foo 12345 67890' }

    it 'should return a hash' do
      parser.parse(sample).should be_kind_of(Hash)
    end

    it 'should return a hash with the metric name as the key' do
      parser.parse(sample).keys.first.should eq('foo')
    end

    it 'should return a hash with only one key' do
      parser.parse(sample).keys.size.should eq(1)
    end

    it 'should give a hash that includes the value' do
      parser.parse(sample)['foo'].should have_key('value')
      parser.parse(sample)['foo']['value'].should eq('12345')
    end

    it 'should give a hash that includes the measure_time' do
      parser.parse(sample)['foo'].should have_key('measure_time')
      parser.parse(sample)['foo']['measure_time'].should eq('67890')
    end
  end
end
