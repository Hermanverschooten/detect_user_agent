require 'spec_helper'

describe DetectUserAgent do
  describe '.platform' do
    it 'returns laptop for a windows useragent' do
      expect(subject.platform(WINDOWS)).to eql 'Laptop'
    end
    it 'returns phone for a blackberry device' do
      expect(subject.platform(BLACKBERRY)).to eql 'Phone'
    end
  end
end
