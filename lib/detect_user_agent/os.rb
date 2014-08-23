module DetectUserAgent
  def self.os(useragent)
    {
      /Android|Nuvifone/i => "Android",
      /iPad|iPhone|Mobile\/.+Safari/i => "iOS",
      /Windows (NT|98|XP|Vista|7)|Win98|EA download manager/i => "Windows",
      /Windows CE|PPC|SAMSUNG-(SGH|GT)|Phone /i => "Windows Mobile",
      /X11/i => "Linux",
      /Macintosh/i => "Mac",
      /playstation/i => "Playstation",
      /Nintendo/i => "Nintendo",
      /Symbian|SymbOs|SoftBank/i => "Symbian",
      /BlackBerry|RIM|\(BB10;/i => "BlackBerry",
     /PalmSource/i => "Palm",
     /SAMSUNG.+(Dolfin|Jasmine)|Bada/i => "BadaOs",
     /ARCHOS/i => "ArchOs",
     /Linux/i => "Linux",
     /HTC|WCE/i => "Windows Mobile",
     /webOS/i => "webOS",
     /LG-/ => "LG",
     /Nokia/i => "Nokia",
     /SonyEricsson/ => "Sony Ericsson"
    }.each do |regex,val|
      return val if useragent=~regex
    end
    return "Other"
  end
end
