module DetectUserAgent
  def self.platform(useragent)
    {
      /iPad/i => "iPad",
      /iPhone|mobile\/.+Safari/i => "iPhone",
      /Tablet|Ventana|Froyo|Eclair/i => "Tablet",
      /Windows (NT|95|98|XP|Vista|7)|Win98|X11|Macintosh|Linux x|EA download manager/i => "Laptop",
      /Windows CE|Windows Mobile|Windows Phone OS|webOS|WCE|Palm|maemo|Windows.*PPC|Android|Archos|Nuvifone|Folio|obigo/i => "PDA",
      /playstation|PSP|Nintendo/i => "Console",
      /\(BB10;|Nokia|SonyEricsson|Symbian|Motorola|Symbos|SoftBank|BlackBerry|SAMSUNG|HTC|LG|Configuration\/CLDC/i => "Phone"

    }.each do |regex,val|
      return val if useragent=~regex
    end
    return "Other"
  end
end
