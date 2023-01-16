Pod::Spec.new do |spec|
  
 spec.name             = "Bluestack-SDK-Core"
  spec.version          = "4.1.8"
  spec.summary          = "BlueStack by Madvertise provides functionalities for monetizing your mobile application"
  spec.description      = <<-DESC
                       BlueStack by Madvertise provides functionalities for monetizing your mobile application: from premium sales with reach media, video and innovative formats, it facilitates inserting native mobile ads as well all standard display formats
   DESC
  spec.homepage         = "https://github.com/azerion/bluestack-sdk-ios"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  spec.license          = 'Commercial'
  spec.author           = { "MadvertiseMedia" => "https://madvertise.com",
                         "Technical Assistance" => "tech@madvertise.com"
                       }

#  spec.source           = { :http => "https://bitbucket.org/mngcorp/mngads-demo-ios/downloads/Bluestack-SDK-Core-v4.1.3.zip" }
spec.source           = { :git => "https://github.com/azerion/BlueStackSDK-Core.git", :tag => "v#{spec.version}" }

  spec.platform = :ios
  spec.swift_version = "5"
  spec.ios.deployment_target  = '12.2'

  spec.frameworks = 'CoreGraphics', 'QuartzCore', 'SystemConfiguration', 'MediaPlayer', 'CoreMotion', 'EventKitUI', 'EventKit', 'AdSupport', 'StoreKit', 'CoreLocation', 'Accelerate', 'CoreTelephony', 'MessageUI'



 spec.default_subspec = 'Core'

  ###################################
  #######                     #######
  #######       subspecs      #######
  #######                     #######
  ###################################

  spec.subspec 'Core' do |mng|
    mng.vendored_frameworks = 'BlueStackSDK.xcframework'
    mng.dependency 'BlueStack-SDK/OMSDKMadvertise'
  end

  spec.subspec 'OMSDKMadvertise' do |om|
    om.vendored_frameworks           = 'OMSDK_Madvertise.xcframework'
  end

end
