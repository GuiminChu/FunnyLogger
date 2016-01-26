Pod::Spec.new do |s|

  s.name                      = "FunnyLogger"
  s.version                   = "0.1.0"
  s.summary                   = "A logger for Xcode by Swift."
  s.homepage                  = "https://github.com/GuiminChu/FunnyLogger"

  s.license                   = "MIT"

  s.author                    = { "GuiminChu" => "455824173@qq.com" }
  s.social_media_url          = "http://weibo.com/cookcode"

  s.ios.deployment_target 		= "8.0"
  s.tvos.deployment_target 		= "9.0"
  s.osx.deployment_target 		= "10.9"

  s.source                    = { :git => "https://github.com/GuiminChu/FunnyLogger.git", :tag => "0.1.0" }
  s.source_files              = "FunnyLogger.swift"

  s.requires_arc              = true

end
