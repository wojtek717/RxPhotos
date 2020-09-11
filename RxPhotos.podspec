Pod::Spec.new do |s|
  s.name = 'RxPhotos'
  s.version = '1.1.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'Reactive extensions for Photos framework.'
  s.homepage = 'https://github.com/wojtek717'
  s.authors = { 'Anton Romanov' => 'istered@outlook.com',
    'Wojciech Konury' => 'wojciechkonury@gmail.com' }
  s.source = { :git => 'https://github.com/wojtek717.git', :tag => s.version }
  s.source_files = 'Source/**/*.{h,m,swift}'
  s.swift_version = '5.0'
  s.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'Photos'

  s.dependency 'RxSwift', '~> 5.1.1'

  s.ios.deployment_target = '12.0'
end