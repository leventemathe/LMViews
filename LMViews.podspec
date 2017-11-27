Pod::Spec.new do |s|

  s.name         = "LMViews"
  s.version      = "0.3"
  s.summary      = "A set of IBDesignable UIView subclasses with IBInspectable properties"
  s.homepage     = "https://github.com/leviouss/LMViews"
  s.license      = "MIT"

  s.author             = { "Levente Máthé" => "leviouss@gmail.com" }

  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/leviouss/LMViews.git", :tag => "v#{s.version}-alpha" }

  s.source_files = "LMViews", "LMViews/**/*.{h,m,swift}"
  s.exclude_files = "Classes/Exclude"

end
