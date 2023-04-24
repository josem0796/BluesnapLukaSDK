Pod::Spec.new do |s|
  s.name             = 'BluesnapLukaSDK'
  s.version          = '0.0.1'
  s.summary          = 'Luka\'s BluesnapSDK integration.'
  s.description      = <<-DESC
                       Luka\'s BluesnapSDK.
                       DESC
  s.homepage         = 'https://github.com/josem0796/BluesnapLukaSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jose Moran' => 'jmoran@lukapay.io' }
  s.source           = { :git => 'https://github.com/josem0796/BluesnapLukaSDK.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'
  s.platform         = :ios, '13.0'
  s.source_files     = 'BluesnapLukaSDK/*'
  s.requires_arc     = true

  # Uncomment and update if your library has any dependencies
  # s.dependency 'Alamofire', '~> 5.4'
  s.dependency 'BluesnapSDK', '~> 1.4.3'
end
