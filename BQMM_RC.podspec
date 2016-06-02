Pod::Spec.new do |s|
  s.name             = "BQMM_RC"
  s.version          = "1.0"
  s.summary          = "BQMM RongCloud SDK"
  s.description      = <<-DESC
                          The developer can use this SDK to integrate more and more emoji, such as some static image emoji, or animated emoji
                       DESC

  s.homepage         = "http://biaoqingmm.com/"
  s.license          = 'MIT'
  s.author           = { "Teng" => "tengwork1@163.com" }
  s.source           = { :git => "https://github.com/siyanhui/bqmm-sdk-ios-rc.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'BQMM/BQMM.framework/Headers/*.h', 'BQMM_EXT/*.{h,m}', 'RongIMKit.framework/Headers/*.h'

  s.resources = [ '*/BQMM.bundle', '*/BQMM_EXT/*.png', '*/RongCloud.bundle', '*/en.lproj', '*/zh-Hans.lproj' ]

  s.xcconfig  = { 'OTHER_LDFLAGS' => '-ObjC' }

  s.vendored_frameworks = 'BQMM/BQMM.framework', 'RongIMKit.framework', 'RongIMLib.framework'

  s.vendored_libraries = 'BQMM/BQMM.framework', 'RongIMKit.framework', 'RongIMLib.framework'

  s.libraries = 'z', '*/*.a', 'xml2', "stdc++", "sqlite3", "c++", "c++abi"
  
  s.framework = 'AssetsLibrary', "MapKit", "ImageIO", "CoreLocation", "SystemConfiguration", "QuartzCore", "OpenGLES", "CoreVideo", "CoreTelephony", "CoreMedia", "CoreAudio", "CFNetwork", "AudioToolbox", "AVFoundation", "UIKit", "CoreGraphics"
end