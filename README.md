#iOS 原生应用集成 ReactNative模块

###使用 CocoaPods 集成需注意事项
* Podfile引用路径不要写错,./RNComponent/node_modules 为项目绝对路径下的 node 库

```
	pod 'Folly', :podspec => './RNComponent/node_modules/react-native/third-party-podspecs/Folly.podspec'
	
    pod 'DoubleConversion', :podspec => './RNComponent/node_modules/react-native/third-party-podspecs/DoubleConversion.podspec'
    
    pod 'glog', :podspec => './RNComponent/node_modules/react-native/third-party-podspecs/glog.podspec'
```

###react0.45以后需在 podfile 中添加 'CxxBridge'

