# MagicUI

[![English](https://img.shields.io/badge/English-README-green)](README.md)

一个适用于iOS和macOS应用的全面SwiftUI组件库。

## 功能特性

- **按钮**: 可自定义样式的MagicButton，支持多种交互
- **背景**: 美丽的动画背景组件
- **图标**: 丰富的图标库，与SF Symbols集成
- **卡片**: 灵活的卡片组件用于内容展示
- **加载**: 加载指示器和进度视图
- **设置**: 可配置的设置UI组件
- **工具提示**: 高级工具提示系统
- **形状**: 自定义形状组件
- **桌面**: macOS桌面模拟组件
- **扩展**: 增强功能的SwiftUI View扩展

## 安装

### Swift Package Manager

将MagicUI作为依赖项添加到您的`Package.swift`中：

```swift
dependencies: [
    .package(url: "https://github.com/nookery/MagicUI.git", from: "1.0.0")
]
```

或者直接在Xcode中添加：

1. 转到文件 → 添加包...
2. 输入仓库URL：`https://github.com/nookery/MagicUI.git`
3. 选择您要使用的版本

## 使用方法

### MagicButton

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        MagicButton("点击我") {
            print("按钮被点击！")
        }
        .buttonStyle(.magic)
    }
}
```

### MagicBackground

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        ZStack {
            MagicBackground(.ocean)
            VStack {
                Text("你好世界")
                    .foregroundColor(.white)
            }
        }
    }
}
```

### 图标扩展

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .iconStyle(.large)
            Image(systemName: "heart.fill")
                .iconStyle(.medium)
        }
    }
}
```

## 组件

### 核心组件
- `MagicButton` - 可自定义按钮组件
- `MagicCard` - 内容展示卡片
- `MagicCentered` - 居中内容包装器
- `MagicFeature` - 功能展示组件
- `MagicKeyValue` - 键值显示组件

### 背景
- `MagicBackground` - 动画背景组件
- `MagicBackgroundGroup` - 背景集合

### UI扩展
- `View+MagicHStack` - 增强的HStack
- `View+MagicVStack` - 增强的VStack
- `View+MagicRounded` - 圆角扩展
- `View+MagicTextGradient` - 文字渐变效果

### 设置
- `MagicSettingView` - 设置UI组件
- 各种设置行类型（开关、滑块、选择器）

### 图标与资源
- 图标形状组件
- 图标容器视图
- 各种图标类型的图片扩展

## 要求

- iOS 17.0+
- macOS 14.0+
- Swift 5.9+

## 许可证

本项目采用MIT许可证 - 详见LICENSE文件。
