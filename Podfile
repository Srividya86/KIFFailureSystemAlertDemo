use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'

target 'KifAlertFailureDemo' do
end

target 'KifAlertFailureDemoTests’ do
  pod 'KIF', :configurations => ['Debug']
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
	    config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
            config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
        end
    end
end