Pod::Spec.new do |s|
  s.name             = 'AMRAdapterMintegral'
  s.version          = '7.7.9.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Mintegral adapter for AMR SDK.'
  s.description      = 'AMR Mintegral adapter allows publishers to mediate Mintegral native banner, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-MINTEGRAL.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterMintegral/Libs/AMRAdapterMintegral.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.78'
  s.dependency 'MintegralAdSDK', '7.7.9'
  s.dependency 'MintegralAdSDK/BidSplashAd', '7.7.9'

end
