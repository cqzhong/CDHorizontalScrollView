#
# Be sure to run `pod lib lint CDHorizontalScrollView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CDHorizontalScrollView'
  s.version          = '1.0.0'
  s.summary          = '横向滚动视图'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  横向滚动视图, 其实是对collectionView的简单封装, 方便使用 可以自定义cell,  (纯代码, Xib都行)简单快捷,  详见Demo
                       DESC

  s.homepage         = 'https://github.com/cqzhong/CDHorizontalScrollView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cqzhong' => '2863802082@qq.com' }
  s.source           = { :git => 'https://github.com/cqzhong/CDHorizontalScrollView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CDHorizontalScrollView/*.{h,m}'

  # s.resource_bundles = {
  #   'CDHorizontalScrollView' => ['CDHorizontalScrollView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Masonry', '~> 1.1.0'

end
