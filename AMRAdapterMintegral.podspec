Pod::Spec.new do |s|
  s.name             = 'AMRAdapterMintegral'
  s.version          = '7.1.9.0'
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
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'AMRAdapterMintegral/Libs/AMRAdapterMintegral.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.16'
  s.dependency 'MintegralAdSDK/NativeAd', '7.1.9'
  s.dependency 'MintegralAdSDK/InterstitialVideoAd', '7.1.9'
  s.dependency 'MintegralAdSDK/RewardVideoAd', '7.1.9'
  s.dependency 'MintegralAdSDK/InterstitialAd', '7.1.9'
  s.dependency 'MintegralAdSDK/BannerAd', '7.1.9'
  s.dependency 'MintegralAdSDK/BidNativeAd', '7.1.9'
  s.dependency 'MintegralAdSDK/SplashAd', '7.1.9'
  s.dependency 'MintegralAdSDK/NewInterstitialAd', '7.1.9'

end
