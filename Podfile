source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

# 'node_modules'目录一般位于根目录中
# 但是如果你的结构不同，那你就要根据实际路径修改下面的`:path`
target 'NativeToReactNative' do
    pod 'React', :path => './RNComponent/node_modules/react-native', :subspecs => [
        'Core',
        'CxxBridge',        # 如果RN版本 >= 0.47则加入此行
        'DevSupport',       # 如果RN版本 >= 0.43，则需要加入此行才能开启开发者菜单
        'RCTText',
        'RCTImage',
        'RCTNetwork',
        'RCTWebSocket',     # 调试功能需要此模块
        'RCTAnimation'      # FlatList和原生动画功能需要此模块
    ]     
        
    # 如果你的RN版本 >= 0.42.0，则加入下面这行
    pod 'yoga', :path => './RNComponent/node_modules/react-native/ReactCommon/yoga'
    
    # 如果RN版本 >= 0.45则加入下面三个第三方编译依赖
    pod 'Folly', :podspec => './RNComponent/node_modules/react-native/third-party-podspecs/Folly.podspec'
    pod 'DoubleConversion', :podspec => './RNComponent/node_modules/react-native/third-party-podspecs/DoubleConversion.podspec'
    pod 'glog', :podspec => './RNComponent/node_modules/react-native/third-party-podspecs/glog.podspec'
       
end
