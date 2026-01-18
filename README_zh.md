# MagicUI

[![English](https://img.shields.io/badge/English-README-green)](README.md)

一个专注于 SwiftUI View 扩展的组件库，提供简洁优雅的链式调用 API。

## 功能特性

- **居中布局**: `magicCentered()` - 一键居中显示视图
- **卡片样式**: `inCard()` - 多种材质和颜色卡片样式
- **键值显示**: `withMagicValue()` - 优雅的键值对展示
- **加载状态**: `loadingOverlay()`, `skeleton()` - 多种加载效果
- **桌面布局**: `inDesktop()` - macOS 桌面风格布局
- **图标样式**: 丰富的图标扩展和样式
- **按钮增强**: MagicButton 组件及样式
- **背景动画**: 美丽的动画背景效果

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

### 居中布局

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("居中显示的内容")
                .font(.title)
                .magicCentered()
        }
    }
}
```

### 卡片样式

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("基础卡片")
                .inCardUltraThin()

            Text("蓝色渐变卡片")
                .foregroundColor(.white)
                .inCard(gradient: [.blue, .purple])
        }
    }
}
```

### 键值显示

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("用户名")
                .withMagicValue("admin")

            Text("邮箱")
                .withMagicValue("admin@example.com")
                .withIcon(Image(systemName: "envelope"))
        }
    }
}
```

### 加载状态

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    @State private var isLoading = false

    var body: some View {
        VStack {
            Text("主要内容")
                .skeleton(isLoading: isLoading)

            Button("开始加载") {
                isLoading = true
            }
        }
        .loadingOverlay(isLoading: isLoading, title: "正在加载...")
    }
}
```

### 桌面布局

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        Text("桌面应用内容")
            .inDesktop()
    }
}
```

## 扩展方法

### 布局扩展
- `magicCentered()` - 视图居中显示
- `inDesktop()` - macOS 桌面风格布局

### 样式扩展
- `inCard()` - 多种卡片样式（材质、颜色、渐变）
- `inCardUltraThin()`, `inCardThin()`, `inCardRegular()`, `inCardThick()` - 预定义材质卡片

### 数据展示
- `withMagicValue()` - 键值对显示
- `withIcon()` - 为键值对添加图标

### 加载状态
- `loadingOverlay()` - 全屏加载覆盖层
- `loadingSpinner()` - 简单的加载指示器
- `skeleton()` - 骨架屏效果

### 其他扩展
- `iconStyle()` - 图标样式设置
- `buttonStyle(.magic)` - MagicButton 样式
- 背景动画组件
- 设置UI组件

## 要求

- iOS 17.0+
- macOS 14.0+
- Swift 5.9+

## 许可证

本项目采用MIT许可证 - 详见LICENSE文件。
