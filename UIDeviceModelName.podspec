Pod::Spec.new do |s|
  s.name         = "UIDeviceModelName"
  s.version      = "1.1.3"
  s.summary      = "Extention of UIDevice to get the model name of the iOS devices."
  s.homepage     = "https://github.com/anthonymyatt/UIDeviceModelName"
  s.license      = { :type => "MIT", :file => "LICENCE" }
  s.author             = { "Imperative Apps(Anthony Myatt)" => "support@imperativeapps.com.au", "CrossBridge(Katsuya Kato)" => "crossbridge.kato@gmail.com" }
  s.platform     = :ios, '13.0'
  s.source       = { :git => "https://github.com/anthonymyatt/UIDeviceModelName.git", :tag => s.version.to_s }
  s.source_files  = "Sources/*.swift"
  s.requires_arc = false
end
