Pod::Spec.new do |s|
    s.name             = 'VideoViewPlayer'
    s.version          = '0.1.0'
    s.summary          = 'This Pod is for custom Video View.'
   
    s.description      = <<-DESC
  This custom Video View pod will play video in any view, just put "VideoViewPlayer" class to the view's custom class !
                         DESC
   
    s.homepage         = 'https://github.com/talha180295/VideoViewPlayer'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '<YOUR NAME HERE>' => '<YOUR EMAIL HERE>' }
    s.source           = { :git => 'https://github.com/talha180295/VideoViewPlayer.git', :tag => s.version.to_s }
   

    s.ios.deployment_target = '10.2'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5' }
    s.source_files = 'VideoViewPlayer/VideoViewPlayer.swift'
   
  end