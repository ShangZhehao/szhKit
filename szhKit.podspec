Pod::Spec.new do |s|
  s.name         = "szhKit"
  s.version      = "0.2.0"
  s.summary      = "The best way to deal with Dates & Time Zones in Swift"
  s.homepage     = "https://github.com/ShangZhehao/szhKit.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ShangZhehao" => "szh875925905@163.com" }
  s.social_media_url   = "https://twitter.com/danielemargutti"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/ShangZhehao/szhKit.git", :tag => s.version.to_s }
  s.source_files  = "szhKit/Classes/**/*"
  s.frameworks  = "Foundation"
  s.swift_version = "4.2"
end
