#
# Be sure to run `pod lib lint core.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'common'
  s.version          = '1.0.0'
  s.summary          = 'testing subspecs'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "test of subspecs"

  s.homepage         = 'https://github.com/test/common'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Saliom' => 'test@test.com' }
  s.source           = { :git => 'https://github.com/test/core.git', :tag => s.version.to_s }

  # Core subspec
  s.subspec 'Core' do |core|
  	core.source_files = 'common/Common/Classes/**/*'

    core.resources = ['common/Common/**/*.bundle']
    
    core.dependency 'Fabric'
    core.dependency 'Crashlytics'
  end


  # Mobile subspec
  s.subspec 'iOS' do |ios|
      ios.source_files = ['common/iOS/**/*.{swift,h,m,c}',
      #'common/iOS/Fabric.framework/Headers/*.h',
      #'common/iOS/Crashlytics.framework/Headers/*.h',
      ]
      
      ios.resources = ['common/iOS/**/*.bundle']
      
      ios.ios.deployment_target = '9.0'
      
      
      ios.public_header_files = ['common/iOS/**/*.h',
      #'common/iOS/Crashlytics.framework/Headers/*.h',
      #'common/iOS/Fabric.framework/Headers/*.h',
      ]
  end
  
  
  # TV subspec
  s.subspec 'TV' do |tv|
      tv.tvos.deployment_target = '10.0'
      tv.source_files = ['common/TV/**/*.{swift,h,m,c}',
      #'common/TV/Fabric.framework/Headers/*.h',
      #'common/TV/Crashlytics.framework/Headers/*.h'
      ]
      tv.public_header_files = ['common/TV/**/*.h',
      #'common/iOS/Crashlytics.framework/Headers/*.h',
      #'common/iOS/Fabric.framework/Headers/*.h',
      ]
      tv.resources = ['common/TV/**/*.bundle']
  end
end
