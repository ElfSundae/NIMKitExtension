Pod::Spec.new do |s|
  s.name        = 'NIMKitExtension'
  s.version     = '0.5.0'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.summary     = 'A collection of extensions for NIMKit (Netease IM UI Kit).'
  s.homepage    = 'https://github.com/ElfSundae/NIMKitExtension'
  s.authors     = { 'Elf Sundae' => 'https://0x123.com' }
  s.source      = { :git => 'https://github.com/ElfSundae/NIMKitExtension.git', :tag => s.version }

  s.ios.deployment_target = '9.0'

  s.source_files = 'NIMKitExtension/**/*.{h,m}'

  s.default_subspec = 'Lite'

  s.subspec 'Lite' do |ss|
    ss.dependency 'NIMKit/Lite', '~> 2.11'
  end

  s.subspec 'Full' do |ss|
    ss.dependency 'NIMKit/Full', '~> 2.11'
  end

  s.pod_target_xcconfig = {
    'PRODUCT_BUNDLE_IDENTIFIER' => 'com.0x123.NIMKitExtension'
  }
end
