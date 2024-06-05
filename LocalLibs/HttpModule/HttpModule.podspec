#
Pod::Spec.new do |spec|

  spec.name         = "HttpModule"
  spec.version      = "0.0.1"
  spec.summary      = "the HttpModule that wrapped Alamofire"
  spec.homepage     = "https://github.com/masterAventador/SwiftPractiseForCppServer.git"
  spec.author             = { "masterAventador" => "419460185@qq.com" }
  
  spec.platform     = :ios,13.0
  
  spec.source       = { :git => "https://github.com/masterAventador/SwiftPractiseForCppServer.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"

  spec.dependency 'Alamofire'
  spec.dependency 'SwiftProtobuf'

end
