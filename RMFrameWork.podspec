#
# Be sure to run `pod lib lint RMFrameWork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RMFrameWork'
  s.version          = '0.1.0'
  s.summary          = 'shanghai ruimin framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/scutliuyi/RMFrameWork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuyi' => 'scutliuyi@163.com' }
  s.source           = { :git => 'https://github.com/scutliuyi/RMFrameWork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RMFrameWork/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RMFrameWork' => ['RMFrameWork/Assets/*.png']
  # }

  s.public_header_files = 'RMFrameWork/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking'
  s.dependency 'GTMBase64'
  s.dependency 'OpenUDID'
  s.dependency 'Reachability'
  s.dependency 'ZBarSDK'
end
