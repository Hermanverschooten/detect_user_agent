module DetectUserAgent
  def self.browser(useragent)
    {
      /\(BB10;.+Mobile Safari|BlackBerry.+Vendor/ => 'BlackBerry',
      /MSIE/i => "Internet Explorer",
      /Chrome/i => "Chrome",
      /Dolfin/i => "Dolfin",
      /Jasmine/i => "Jasmine",
      /NetFront|Playstation|PSP|Nintendo 3DS/i => "NetFront",
      /Silk/ => "Amazon Silk",
      /Safari|AppleWebKit/i => "Safari",
      /Opera|maemo/i => "Opera",
      /Firefox|gecko/i => "Firefox",
      /Obigo|Teleca/i => "Obigo",
      /Nokia\d+/ => "Opera"
    }.each do |regex,val|
      return val if useragent=~regex
    end
    return "Other"
  end
end
