Pod::Spec.new do |spec|
  spec.name             = "Frida"
  spec.version          = "1.0.0"
  spec.summary          = "Frida for MonkeyDev"
  spec.description      = <<-DESC
                          - Frida for MonkeyDev
                        DESC

  spec.homepage         = "https://github.com/AloneMonkey/MonkeyDev"

  spec.license          = { :type => "BSD", :file => "LICENSE" }
  spec.author           = { "AloneMonkey" => "liupeiqing1993@163.com" }
  spec.social_media_url = "http://weibo.com/xiaoqing28"
  spec.platform         = :ios, "8.0"
  spec.source           = { :http => "https://github.com/AloneMonkey/MonkeyDevPod/raw/master/Frida/Frida.zip"}
  spec.vendored_libraries = 'FridaGadget.dylib'  
  #spec.source_files        = "**/*.{h,m}"  
  #spec.public_header_files = "include/CydiaSubstrate.h"  
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lsubstrate' }
  spec.pod_target_xcconfig = { "ONLY_ACTIVE_ARCH" => "No" }
end