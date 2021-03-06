#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name                    = "CXTapGestureRecognizer"
  s.version                 = "1.0.0"
  s.summary                 = "UIGestureRecognizer subclass that takes much of the effort out of recognizing taps."
  s.homepage                = "https://github.com/dclelland/CXTapGestureRecognizer"
  s.license                 = { :type => 'MIT' }
  s.author                  = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source                  = { :git => "https://github.com/dclelland/CXTapGestureRecognizer.git", :tag => "1.0.0" }
  s.platform                = :ios, '7.0'
  s.ios.deployment_target   = '7.0'
  s.ios.source_files        = 'CXTapGestureRecognizer/*.{h,m}'
  s.requires_arc            = true
end