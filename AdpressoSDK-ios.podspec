Pod::Spec.new do |s|
  s.name             = 'AdpressoSDK-ios'
  s.version          = '2.0.3'
  s.summary          = 'Adpresso SDK for iOS'

  s.homepage         = 'https://github.com/valuecommerce/AdpressoSDK_ios'
  s.license          = { :type => 'Copyright', :text => 'Copyright © 2016 ValueCommerce Co., Ltd. All Rights Reserved.' }
  s.author           = { 'Valuecommerce' => 'devteam2@valuecommerce.co.jp' }
  s.source           = { :git => 'git@ghe.valuecommerce.com:mitakahashi/AdpressoSDK_ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.source_files = 'AdpressoSDK-ios/Classes/*.h'
  s.public_header_files = 'AdpressoSDK-ios/Classes/*.h'
  s.vendored_libraries = 'libadlantis_ios_sdk.a'
  
  s.frameworks = 'AdSupport', 'CoreTelephony', 'SystemConfiguration', 'QuartzCore'
end
