Pod::Spec.new do |s|
  s.name             = 'AMRAdapterMintegral'
  s.version          = '6.9.5.0'
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
  s.vendored_libraries = 'AMRAdapterMintegral/Libs/libAMRAdapterMintegral.a'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.dependency 'AMRSDK', '~> 1.4.75'
  s.dependency 'MintegralAdSDK/NativeAd', '6.9.5'
  s.dependency 'MintegralAdSDK/InterstitialVideoAd', '6.9.5'
  s.dependency 'MintegralAdSDK/RewardVideoAd', '6.9.5'
  s.dependency 'MintegralAdSDK/InterstitialAd', '6.9.5'
  s.dependency 'MintegralAdSDK/BannerAd', '6.9.5'
  s.dependency 'MintegralAdSDK/BidNativeAd', '6.9.5'

end
