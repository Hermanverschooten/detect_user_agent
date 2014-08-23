require 'spec_helper'

describe DetectUserAgent do
  describe '.os' do
    it 'returns Windows for the windows useragent' do
      expect(subject.os(WINDOWS)).to eql 'Windows'
    end
    it 'returns BlackBerry for a blackberry device' do
      expect(subject.os(BLACKBERRY)).to eql 'BlackBerry'
    end
  end
end
