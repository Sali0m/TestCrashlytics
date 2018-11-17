# Uncomment the next line to define a global platform for your project

use_frameworks!
workspace 'Test'

target 'TestProject' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks

  # Pods for TestProject
  project 'TestProject/TestProject.xcodeproj'
  platform :tvos, '10.0'

  pod 'common/Core', :path => 'Submodules/common', :inhibit_warnings => false
  pod 'common/TV', :path => 'Submodules/common', :inhibit_warnings => false

end


target 'TestiOSProject' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks

  # Pods for TestiOSProject
  project 'TestiOSProject/TestiOSProject.xcodeproj'
  platform :ios, '9.0'

  pod 'common/Core', :path => 'Submodules/common', :inhibit_warnings => false
  pod 'common/iOS', :path => 'Submodules/common', :inhibit_warnings => false

end


###############
##PRE INSTALL##
###############
# Workaround for this error: "The 'X' target has transitive dependencies that include static binaries"
pre_install do |installer|
    Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
end
