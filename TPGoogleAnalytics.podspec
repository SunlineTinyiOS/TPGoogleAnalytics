#
# Be sure to run `pod lib lint TPGoogleAnalytics.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TPGoogleAnalytics'
  s.version          = '0.0.1'
  s.summary          = '谷歌统计'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        谷歌统计
                       DESC

  s.homepage         = 'https://github.com/SunlineTinyiOS/TPGoogleAnalytics'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bygd2014@sina.com' => 'bygd2014@sina.com' }
  s.source           = { :git => 'https://github.com/SunlineTinyiOS/TPGoogleAnalytics.git'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'TPGoogleAnalytics/Classes/**/*'

  s.frameworks = 'SystemConfiguration', 'CoreData'
  s.vendored_libraries ='TPGoogleAnalytics/Assets/libGoogleAnalyticsServices.a','TPGoogleAnalytics/Assets/libAdIdAccess.a'
  s.libraries = 'sqlite3', 'z'
  # s.dependency 'AFNetworking', '~> 2.3'
end
