require 'json'
package = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|

  s.name         = "react-native-photos-framework"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       =  { :git => "https://github.com/vforvasile/react-native-photos-framework.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'

end
