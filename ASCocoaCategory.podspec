#
# Be sure to run `pod lib lint ASCocoaCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ASCocoaCategory"
  s.version          = "0.0.2"
  s.summary          = "A collection of UIKit and NSFoundation categories."

  s.description      = <<-DESC
    A collection of UIKit and NSFoundation categories, make convenience methods to easily use. [tags:cocoa,objective-c,ios,mac,category]
                       DESC

  s.homepage         = "https://github.com/Whirlwind/ASCocoaCategory.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "squarezw" => "square.zhao.wei@gmail.com" }
  s.source           = { :git => "https://github.com/Whirlwind/ASCocoaCategory.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
