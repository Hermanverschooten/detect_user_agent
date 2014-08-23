require "detect_user_agent/version"
require "detect_user_agent/platform"
require "detect_user_agent/browser"
require "detect_user_agent/os"

module DetectUserAgent
  def self.parse(useragent)
    {
      platform: platform(useragent),
      browser: browser(useragent),
      os: os(useragent)
    }
  end
end
