import React, { Component } from 'react';
import {
    AppRegistry,
    StyleSheet,
    NativeModules,
    View
} from 'react-native';
import Button from 'apsl-react-native-button'

var RNModules = NativeModules.RTModule;

class NativeToReactNative extends Component {
    render() {
        return (
            <View style={styles.container}>
                <Button 
                    style={styles.buttonStyle}
                    textStyle={styles.textStyle}
                    onPress={() => {
                        //Alert.alert('点击了Button按钮');
                        RNModules.RNOpenOneVC('测试')
                    }}>
                    点击跳转原生页面
                </Button>      
            </View>
        );
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF',
    },
    welcome: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
    },
    instructions: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
    },
    textStyle: {
        color: 'white'
    },
    buttonStyle: {
        borderColor: '#f39c12',
        backgroundColor: '#f1c40f',
        margin: 10  //边距
    },
});


console.ignoredYellowBox = ['Warning: BackAndroid is deprecated. Please use BackHandler instead.','source.uri should not be an empty string','Invalid props.style key'];
console.disableYellowBox = true // 关闭全部黄色警告

// 注册组件，程序入口
// 第一个参数：注册模块名称,这里亲测不和项目名一致也可以，但是好多资料说名字要和项目名一致
// 第二个参数：函数，此函数返回组件类名，程序启动就会自动去加载这个组件
AppRegistry.registerComponent('NativeToReactNative', () => NativeToReactNative);
