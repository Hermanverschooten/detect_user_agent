require 'spec_helper'

describe DetectUserAgent do
  describe '.parse' do
    it 'returns a hash with platform, os en browser keys' do
      expect(subject.parse("")).to eql({
        platform: 'Other',
        browser: 'Other',
        os: 'Other'
      })
    end
  end
end
