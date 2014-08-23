require 'spec_helper'

describe DetectUserAgent do
  describe '.browser' do
    it 'returns Internet Explorer for the windows useragent' do
      expect(subject.browser(WINDOWS)).to eql 'Internet Explorer'
    end
    it 'returns BlackBerry for a blackberry device' do
      expect(subject.browser(BLACKBERRY)).to eql 'BlackBerry'
    end
  end
end
