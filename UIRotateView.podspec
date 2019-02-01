Pod::Spec.new do |s|
  s.name         = "UIRotateView"
  s.version      = "1.0.1"
  s.summary      = "he UIView Rotate from value 0.0 to 1.0. General case is use with UICircleSlider as an indicator."

  s.description  = <<-DESC
                    he UIView Rotate from value 0.0 to 1.0. General case is use with UICircleSlider as an indicator.
                   DESC

  s.homepage     = "https://github.com/kidyoungx/UIRotateView"

  s.license      = "MPL-2.0"

  s.author             = { "Kid Young" => "kidyoungx@gmail.com" }

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/kidyoungx/UIRotateView.git", :tag => "#{s.version}" }

  s.source_files  = "UIRotateView", "UIRotateView/**/*.{h,m}"
  s.exclude_files = "SampleUIRotateView"

  s.public_header_files = "UIRotateView/**/*.h"

  s.requires_arc = true

end
