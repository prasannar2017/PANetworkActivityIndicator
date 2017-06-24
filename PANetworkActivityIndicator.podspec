Pod::Spec.new do |s|
  s.name             = 'PANetworkActivityIndicator'
  s.version          = '0.1.0'
  s.summary          = 'Handler for showing/hiding of the iOS network activity indicator.'
  s.description      = <<-DESC
Thread safe handler for showing/hiding of the iOS network activity indicator.
                       DESC

  s.homepage         = 'https://github.com/prasannar2017/PANetworkActivityIndicator'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'prasannar2017' => 'prasanna.aithal2017@gmail.com' }
  s.source           = { :git => 'https://github.com/prasannar2017/PANetworkActivityIndicator.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'PANetworkActivityIndicator/Classes/**/*'
#s.public_header_files = 'PANetworkActivityIndicator/Classes/**/*'
  s.frameworks = 'UIKit', 'MapKit'

end
