# MagicUI 开发指南

本文档整合了 MagicUI Swift Package 的所有开发规范和最佳实践。

## 项目概述

MagicUI 是一个专注于优雅 View 扩展和链式 API 的 SwiftUI 组件库。

### 核心功能模块

- **ExtView+** - 核心 View 扩展，提供链式 API
  - 布局：`magicCentered()`、`inDesktop()`
  - 样式：`inCard()`、圆角、阴影
  - 数据展示：`withMagicValue()`、渐变文本
  - 加载状态：`loadingOverlay()`、骨架屏效果
- **Background** - 12 种动画背景主题（Basic、Ocean、Forest、Cosmic 等）
- **Button** - MagicButton 组件（8 种样式、8 种尺寸）
- **Card** - 材质卡片系统（ultraThin、thin、regular、thick）
- **KeyValue** - 键值对显示组件，支持复制功能
- **Loading** - 多种加载状态和叠加层
- **Icon** - 图标扩展和容器
- **Setting** - 设置 UI 组件（Toggle、Slider、Picker）
- **Tooltip** - 高级提示组件
- **Poster** - 海报/英雄区域组件

### 技术栈

- **Swift** - 5.9+
- **SwiftUI** - UI 框架
- **Combine** - 响应式编程
- **Async/Await** - 异步操作
- **OSLog** - 日志记录

### 平台支持

- macOS 14.0+
- iOS 17.0+

### 依赖

- **无外部依赖** - 独立库
- **内部资源**：Icons.xcassets

## 开发原则

### 第一步：理解项目架构

在开发任何功能前：

1. 查看项目根目录的 README.md 和 README_zh.md
2. 理解模块化目录结构：
   - `Sources/MagicKit/` - 源代码
   - `Sources/MagicKit/ExtView+/` - 核心 View 扩展（公共入口）
   - `Sources/MagicKit/Button/` - 按钮组件
   - `Sources/MagicKit/Background/` - 背景动画
   - 其他功能模块目录
3. 理解项目的核心理念：**优雅的链式 API**
4. 查看现有代码的组织模式

### 第二步：代码编写规范

**文件组织：**
- 每个 struct/class/extension 放在独立文件中
- 使用 MARK 分组组织代码
- 相关文件放在同一目录
- View 扩展放在 `ExtView+/` 目录
- 独立组件放在对应的功能目录

**代码质量：**
- 添加详细的中文代码注释
- 使用 `public` 标记公共 API
- 使用 `internal` 或 `private` 隐藏实现细节
- 添加适当的错误处理
- 避免 SwiftUI 视图中的内存泄漏

**命名规范：**
- 使用清晰、描述性的名称
- 扩展文件命名：`Type+Feature.swift`（如 `View+MagicCentered.swift`）
- View 扩展方法使用 `magic` 前缀或特殊后缀（如 `magicCentered()`、`inCard()`）
- 布尔值使用 `is`、`has` 前缀（`isLoading`、`hasImage`）

### 第三步：遵循规范

遵循以下 SwiftUI 开发规范：

1. **代码组织** - 独立文件、相关目录、MARK 分组
2. **MARK 分组顺序** - Properties → Body → Actions → Helpers → Preview
3. **View 扩展模式** - 链式调用、返回 `some View`
4. **预览代码** - 多尺寸预览、多场景预览

## 核心模式

### 1. View 扩展模式

MagicUI 的核心理念是通过 View 扩展提供优雅的链式 API：

```swift
// ExtView+/View+MagicCentered.swift
public extension View {
    /// 一键居中视图
    func magicCentered() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
```

**扩展模式要点：**
- 使用 `public extension View` 让所有 View 都可以使用
- 返回 `some View` 保持类型安全
- 方法命名清晰，使用 `magic` 前缀或特殊介词（`in`、`with`）
- 支持链式调用

```swift
// 使用示例
Text("Hello")
    .font(.title)
    .inCard()
    .magicCentered()
```

### 2. 卡片样式模式

```swift
// ExtView+/View+Card.swift
public extension View {
    /// 应用卡片样式（可自定义材质、颜色、渐变）
    func inCard(
        material: Material = .regular,
        borderColor: Color? = nil,
        gradient: [Color]? = nil
    ) -> some View {
        // 实现细节
    }

    /// 便捷方法：超薄材质卡片
    func inCardUltraThin() -> some View {
        inCard(material: .ultraThin)
    }
}
```

**设计原则：**
- 提供灵活的基础方法
- 提供常用配置的便捷方法
- 支持 Material 和自定义样式
- 保持 API 一致性

### 3. 键值对组件模式

```swift
// KeyValue/MagicKeyValue.swift
public struct MagicKeyValue: View {
    let key: String
    let value: String
    let icon: Image?

    var body: some View {
        HStack {
            if let icon = icon {
                icon
                    .iconStyle()
            }
            Text(key)
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
                .font(.body.monospaced())
        }
    }
}

// ExtView+/View+WithValue.swift
public extension View {
    /// 为视图添加键值对展示
    func withMagicValue(
        _ value: String,
        icon: Image? = nil
    ) -> some View {
        MagicKeyValue(
            key: "",
            value: value,
            icon: icon
        )
    }
}
```

### 4. 加载状态模式

```swift
// Loading/MagicLoading.swift
public struct MagicLoading: View {
    let title: String
    let logo: Image?

    public init(title: String, logo: Image? = nil) {
        self.title = title
        self.logo = logo
    }

    public var body: some View {
        VStack(spacing: 20) {
            if let logo = logo {
                logo
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
            }
            ProgressView()
            Text(title)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.ultraThinMaterial)
    }
}

// ExtView+/View+LoadingOverlay.swift
public extension View {
    /// 显示加载叠加层
    func loadingOverlay(
        isLoading: Bool,
        title: String = "Loading...",
        logo: Image? = nil
    ) -> some View {
        self.overlay(
            Group {
                if isLoading {
                    MagicLoading(title: title, logo: logo)
                }
            }
        )
    }
}
```

### 5. MARK 分组规范

```swift
// MARK: - Properties
// MARK: - Computed Properties
// MARK: - Initialization
// MARK: - Body
// MARK: - Public Methods
// MARK: - Private Methods
// MARK: - Preview
```

### 6. 预览代码模式

```swift
#if DEBUG
#Preview("Basic") {
    Text("Card Example")
        .inCard()
        .padding()
}

#Preview("Gradient") {
    Text("Gradient Card")
        .foregroundColor(.white)
        .inCard(gradient: [.blue, .purple])
        .padding()
}

#Preview("Sizes") {
    VStack(spacing: 20) {
        Text("Small").font(.caption)
        Text("Regular").font(.body)
        Text("Large").font(.title)
    }
    .inCard()
    .padding()
}
#endif
```

### 7. 平台条件编译

```swift
#if os(macOS)
// macOS 专用代码
import AppKit

public extension NSImage {
    func someMethod() { }
}
#elseif os(iOS)
// iOS 专用代码
import UIKit
#endif
```

## 开发工作流

1. **规划阶段** - 使用 `/plan` 命令规划复杂功能
2. **开发阶段** - 遵循本指南的规范
3. **构建验证** - ⚠️ **必须运行 macOS 和 iOS 两个平台的构建**
4. **检查阶段** - 使用 `/swift-check` 命令检查代码规范
5. **提交阶段** - 使用 `/commit` 命令生成 commit message

**⚠️ 重要：构建验证是强制步骤，不能跳过！**

## 关键注意事项

### Swift Package 特定

- ✅ 没有 AppDelegate 或 SceneDelegate
- ✅ 使用 `#if DEBUG` 条件编译预览代码
- ✅ 公共 API 必须标记为 `public`
- ✅ 内部实现使用 `internal` 或 `private`
- ✅ 注意跨平台兼容性

### View 扩展开发

- ✅ 返回 `some View` 保持类型安全
- ✅ 支持链式调用
- ✅ 使用简洁清晰的方法名
- ✅ 提供灵活的基础方法和便捷方法
- ✅ 添加详细的中文注释

### 组件开发

- ✅ 组件应该是可组合的
- ✅ 支持自定义样式和行为
- ✅ 提供合理的默认值
- ✅ 使用 `@ViewBuilder` 支持复杂内容
- ✅ 添加多个预览示例

### 性能优化

- ✅ 避免在 View 中进行复杂计算
- ✅ 使用 `@State` 和 `@Binding` 正确管理状态
- ✅ 使用 `lazy` 延迟初始化
- ✅ 合理使用 `@ViewBuilder`
- ✅ 避免不必要的视图重绘

### 内存管理

- ✅ 注意 `@State` 和 `@Published` 的内存占用
- ✅ 使用 `[weak self]` 避免循环引用
- ✅ 及时释放不需要的资源
- ✅ 注意 Combine 订阅的生命周期

## 测试

### ⚠️ 多平台构建验证（重要）

**MagicUI 支持 macOS 和 iOS 两个平台，每次构建前必须验证两个平台的编译！**

```bash
# 1. macOS 构建（默认）
swift build

# 2. iOS 模拟器构建（必须验证）
swift build \
  --destination "generic/platform=iOS Simulator" \
  -Xswiftc "-target" \
  -Xswiftc "arm64-apple-ios17.0-simulator" \
  -Xswiftc "-sdk" \
  -Xswiftc "$(xcrun --sdk iphonesimulator --show-sdk-path)"

# 3. 运行测试
swift test
```

**为什么需要多平台验证？**

- MagicUI 在 `Package.swift` 中声明了支持 `macOS(.v14)` 和 `iOS(.v17)`
- 某些 API 是平台特定的（如 `AppKit` 仅在 macOS 可用）
- 需要使用条件编译 `#if os(macOS)` 来处理平台差异
- 用户可能在 iOS 或 macOS 项目中使用 MagicUI

**常见平台特定代码处理：**

```swift
// ✅ 正确：使用条件编译
#if os(macOS)
import AppKit

// macOS 专用代码
public extension NSImage {
    func someMethod() { }
}
#elseif os(iOS)
import UIKit

// iOS 专用代码
public extension UIImage {
    func someMethod() { }
}
#endif

// ❌ 错误：直接导入平台特定框架
import AppKit  // 在 iOS 上会导致编译错误
```

**构建验证时机：**

- ✅ 修改代码后，提交前必须运行 macOS 和 iOS 构建
- ✅ 特别是修改了导入语句或添加新文件时
- ✅ 如果使用了平台特定的 API（如 AppKit、UIKit），必须验证两个平台

**构建失败处理：**

如果 iOS 构建失败：
1. 检查是否使用了平台特定的框架
2. 添加 `#if os(XXX)` 条件编译
3. 确保代码在两个平台上都能编译

### 其他测试命令

```bash
# 在 Xcode 中打开
open Package.swift

# 清理构建
swift package clean

# 运行特定测试
swift test --filter testFunctionName
```

## 常见命令

```bash
# 检查代码格式
swift format .

# 构建验证
swift build

# 运行测试
swift test

# 清理构建
swift package clean

# 在 Xcode 中打开项目
open Package.swift
```

## API 设计指南

### View 扩展命名规范

- **`magicXxx()`** - 特殊的 MagicUI 功能（如 `magicCentered()`）
- **`inXxx()`** - 将视图包装在容器中（如 `inCard()`、`inDesktop()`）
- **`withXxx()`** - 为视图添加功能或展示（如 `withMagicValue()`、`withIcon()`）
- **`xxxStyle()`** - 应用样式（如 `iconStyle()`）

### 组件命名规范

- **`MagicXxx`** - 主要组件（如 `MagicButton`、`MagicLoading`、`MagicKeyValue`）
- **`XxxModifier`** - ViewModifier（如果需要）
- **`XxxStyle`** - 样式配置（如 `ButtonStyle`、`CardStyle`）

### 参数设计

```swift
// ✅ 好：提供合理的默认值
func inCard(
    material: Material = .regular,
    borderColor: Color? = nil,
    shadow: Bool = true
) -> some View

// ✅ 好：使用清晰的参数名
func withMagicValue(
    _ value: String,
    icon: Image? = nil,
    copyable: Bool = true
) -> some View

// ❌ 差：没有默认值，使用不便
func inCard(material: Material, borderColor: Color?, shadow: Bool) -> some View
```

## Emoji 选择指南

### UI 相关
- `✨` - MagicUI 特性
- `🎨` - 样式、颜色、渐变
- `🃏` - 卡片相关
- `📐` - 布局相关
- `🖼️` - 图片、图标

### 动画相关
- `🌊` - 波浪、背景动画
- `⚡️` - 交互效果
- `💫` - 闪烁、旋转动画

### 功能相关
- `⌨️` - 键盘、输入
- `📋` - 复制、剪贴板
- `⏳` - 加载状态
- `💡` - 提示、Tooltip

### 其他
- `🍎` - macOS 专用
- `📱` - iOS 专用
- `🔧` - 工具、设置
- `🚀` - 构建、发布

## 参考资料

- [Swift Package Manager](https://www.swift.org/package-manager/)
- [SwiftUI](https://developer.apple.com/documentation/swiftui/)
- [SwiftUI View Extensions](https://www.swiftbysundell.com/articles/swiftui-view-extension-tips/)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
