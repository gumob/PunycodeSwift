Pod::Spec.new do |s|

  s.name                   = "Punycode"
  s.version                = "1.0.1"
  s.summary                = "A Pure Swift library for encode and decode punycoded strings supporting iOS, macOS, and tvOS."
  s.homepage               = "https://github.com/gumob/PunycodeSwift"
  s.license                = { :type => "MIT", :file => "LICENSE" }
  s.author                 = { "gumob" => "hello@gumob.com" }
  s.frameworks             = 'Foundation'
  s.requires_arc           = true
  s.source                 = { :git => "https://github.com/gumob/PunycodeSwift.git", :tag => "#{s.version}" }
  s.source_files           = "Source/*.{swift}"
  s.ios.deployment_target  = "9.3"
  s.osx.deployment_target  = "10.12"
  s.tvos.deployment_target = "12.0"
  s.swift_version          = '4.2'

end
