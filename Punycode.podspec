Pod::Spec.new do |s|

  s.name                   = "Punycode"
  s.version                = "2.2.0"
  s.summary                = "A Pure Swift library for encode and decode punycoded strings supporting iOS, macOS, and tvOS."
  s.homepage               = "https://github.com/gumob/PunycodeSwift"
  s.license                = { :type => "MIT", :file => "LICENSE" }
  s.author                 = { "gumob" => "hello@gumob.com" }
  s.frameworks             = 'Foundation'
  s.requires_arc           = true
  s.source                 = { :git => "https://github.com/gumob/PunycodeSwift.git", :tag => "#{s.version}" }
  s.source_files           = "Source/*.{swift}"
  s.ios.deployment_target  = "12.0"
  s.osx.deployment_target  = "10.13"
  s.tvos.deployment_target = "12.0"
  s.swift_version          = '5.0'

end
