#
#  Be sure to run `pod spec lint ProtobufObjModule.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "HttpPBModule"
  spec.version      = "0.0.1"
  spec.summary      = "Http ProtobufObj Datas"

  spec.homepage     = "https://github.com/masterAventador/SwiftPractiseForCppServer.git"
  spec.author             = { "masterAventador" => "419460185@qq.com" }
  spec.platform     = :ios, "13.0"

  spec.source       = { :git => "https://github.com/masterAventador/SwiftPractiseForCppServer.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m,swift}"
  spec.exclude_files = "Classes/Exclude"

  spec.dependency 'SwiftProtobuf'

end
