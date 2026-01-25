---
name: swiftui-standards
description: MagicUI SwiftUI 开发标准规范，包括代码组织、MARK 分组、View 扩展、预览代码和跨平台兼容的统一规范。
---

# MagicUI SwiftUI 开发标准规范

本技能确保所有 MagicUI Swift Package 代码遵循项目的统一开发规范。

## 何时使用

- 编写新的 View 扩展
- 创建新的 SwiftUI 组件
- 重构现有 Swift 代码
- 添加背景动画主题
- 实现跨平台兼容代码
- 组织代码结构

## 核心规范

### 1. 代码组织原则

**文件组织：**
- 每个 struct/class/extension 应该放在独立的文件中
- 文件名应与类型名称保持一致
- 扩展文件命名：`Type+Feature.swift`（如 `View+MagicCentered.swift`）
- View 扩展放在 `ExtView+/` 目录
- 独立组件放在对应的功能目录（`Button/`、`Card/`、`Background/` 等）

**目录结构示例：**
```
Sources/MagicUI/
├── ExtView+/               # 核心 View 扩展
│   ├── View+MagicCentered.swift
│   ├── View+Card.swift
│   ├── View+WithValue.swift
│   └── View+LoadingOverlay.swift
├── Button/                 # 按钮组件
│   ├── MagicButton.swift
│   ├── ButtonStyle.swift
│   └── Previews.swift
├── Card/                   # 卡片样式
│   ├── CardModifier.swift
│   └── MaterialType.swift
├── Background/             # 背景动画
│   ├── AnimatedBackground.swift
│   ├── Background+Ocean.swift
│   └── Background+Cosmic.swift
└── KeyValue/              # 键值对组件
    ├── MagicKeyValue.swift
    └── CopyButton.swift
```

### 2. MARK 分组规范

所有 Swift 文件必须按以下顺序使用 MARK 分组：

```swift
// MARK: - Properties           - 属性声明
// MARK: - Computed Properties  - 计算属性
// MARK: - Initialization       - 初始化方法
// MARK: - Body                - SwiftUI View 主体
// MARK: - Public Methods      - 公共方法
// MARK: - Private Methods     - 私有方法
// MARK: - Preview             - 预览（仅 View 文件）
```

**示例模板（组件）：**
```swift
import SwiftUI

struct MagicComponent: View {
    // MARK: - Properties

    @State private var isLoading = false
    let configuration: Configuration

    // MARK: - Computed Properties

    private var displayText: String {
        configuration.text
    }

    // MARK: - Initialization

    init(configuration: Configuration) {
        self.configuration = configuration
    }

    // MARK: - Body

    var body: some View {
        VStack {
            Text(displayText)
            if isLoading {
                ProgressView()
            }
        }
    }
}

// MARK: - Preview

#if DEBUG
#Preview("Default") {
    MagicComponent(configuration: .default)
}

#Preview("Custom") {
    MagicComponent(configuration: .sample)
        .frame(width: 400, height: 300)
}
#endif
```

**示例模板（View 扩展）：**
```swift
import SwiftUI

public extension View {
    /// 一键居中视图
    /// - Returns: 居中的视图
    func magicCentered() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }

    /// 应用卡片样式
    /// - Parameters:
    ///   - material: 材质类型
    ///   - borderColor: 边框颜色
    /// - Returns: 应用卡片样式的视图
    func inCard(
        material: Material = .regular,
        borderColor: Color? = nil
    ) -> some View {
        self
            .padding()
            .background(material)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(borderColor ?? .clear)
            )
    }
}
```

### 3. View 扩展设计规范

**View 扩展必须支持链式调用：**

```swift
public extension View {
    func magicFeature() -> some View {
        // 修改并返回视图
        modifiedContent
    }
}
```

**方法命名规范：**
- `magicXxx()` - 特殊的 MagicUI 功能（如 `magicCentered()`）
- `inXxx()` - 将视图包装在容器中（如 `inCard()`、`inDesktop()`）
- `withXxx()` - 为视图添加功能（如 `withMagicValue()`、`withIcon()`）

**提供基础方法和便捷方法：**
```swift
// 基础方法：灵活但稍复杂
func inCard(
    material: Material = .regular,
    borderColor: Color? = nil,
    shadow: Bool = true
) -> some View

// 便捷方法：简单但固定
func inCardUltraThin() -> some View {
    inCard(material: .ultraThin)
}
```

### 4. 组件设计规范

**提供合理的默认值：**
```swift
public struct MagicButton: View {
    let title: String
    let style: ButtonStyle
    let size: ButtonSize
    let icon: Image?

    public init(
        _ title: String,
        style: ButtonStyle = .primary,
        size: ButtonSize = .regular,
        icon: Image? = nil
    ) {
        self.title = title
        self.style = style
        self.size = size
        self.icon = icon
    }
}
```

**支持自定义配置：**
```swift
public struct Configuration {
    public let title: String
    public let subtitle: String?
    public var icon: Image?
    public var action: () -> Void

    public init(
        title: String,
        subtitle: String? = nil,
        icon: Image? = nil,
        action: @escaping () -> Void = { }
    ) {
        self.title = title
        self.subtitle = subtitle
        self.icon = icon
        self.action = action
    }
}
```

### 5. 异步操作规范

**使用 async/await 处理异步操作：**

```swift
// 在后台线程执行耗时操作
private func processData() async {
    await Task.detached(priority: .utility) {
        // CPU 密集型工作
    }.value
}

// MainActor 更新 UI
@MainActor
func updateUI(_ result: String) {
    self.statusText = result
}
```

**在 SwiftUI View 中：**
```swift
var body: some View {
    VStack {
        if isLoading {
            ProgressView()
        }
    }
    .task {
        await loadData()
    }
}
```

### 6. 预览代码规范

**每个 View 文件底部必须添加多个预览：**

```swift
#if DEBUG
#Preview("Default") {
    MagicComponent()
}

#Preview("With Content") {
    MagicComponent(content: "Example")
        .frame(width: 300, height: 200)
}

#Preview("Dark Mode") {
    MagicComponent()
        .preferredColorScheme(.dark)
}

#Preview("Multiple Sizes") {
    VStack(spacing: 20) {
        MagicComponent().frame(width: 200, height: 100)
        MagicComponent().frame(width: 400, height: 200)
    }
}
#endif
```

**为非 View 组件提供静态工厂方法：**
```swift
extension Configuration {
    static var `default`: Configuration {
        Configuration()
    }

    static var sample: Configuration {
        Configuration(
            title: "Sample",
            subtitle: "This is a sample",
            icon: Image(systemName: "star")
        )
    }
}
```

### 7. 跨平台兼容性

**使用条件编译处理平台差异：**

```swift
#if os(macOS)
import AppKit

// macOS 专用代码
typealias PlatformImage = NSImage
#elseif os(iOS)
import UIKit

// iOS 专用代码
typealias PlatformImage = UIImage
#endif
```

**构建验证：**
```bash
# macOS 构建
swift build

# iOS 模拟器构建
swift build \
  --destination "generic/platform=iOS Simulator" \
  -Xswiftc "-target" \
  -Xswiftc "arm64-apple-ios17.0-simulator"
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

## 公共 API 设计

**View 扩展模式：**

```swift
// ExtView+/View+Feature.swift
public extension View {
    /// 简洁的公共 API 入口
    /// - Parameters:
    ///   - configuration: 配置对象
    /// - Returns: 修改后的视图
    func magicFeature(
        _ configuration: Configuration = .default
    ) -> some View {
        // 实现细节
    }
}
```

**组件模式：**

```swift
// Button/MagicButton.swift
public struct MagicButton: View {
    public init(
        _ title: String,
        style: ButtonStyle = .primary,
        action: @escaping () -> Void
    ) {
        // 初始化
    }

    public var body: some View {
        // 实现
    }
}
```

## 内存管理最佳实践

**避免循环引用：**
```swift
// ❌ 错误：强引用导致循环引用
class MyClass {
    var closure: (() -> Void)?

    func setup() {
        closure = {
            self.doSomething()
        }
    }
}

// ✅ 正确：使用捕获列表
class MyClass {
    var closure: (() -> Void)?

    func setup() {
        closure = { [weak self] in
            self?.doSomething()
        }
    }
}
```

**避免在 View 中创建新对象：**
```swift
// ❌ 错误：每次 body 计算都创建新对象
var body: some View {
    VStack {
        ForEach(items) { item in
            Text(item.name)
                .onTapGesture {
                    self.viewModel = MyViewModel()  // 创建新对象
                }
        }
    }
}

// ✅ 正确：在 init 或外部创建
struct MyView: View {
    @StateObject private var viewModel = MyViewModel()

    var body: some View {
        VStack {
            ForEach(items) { item in
                Text(item.name)
            }
        }
    }
}
```

## Swift Package 特定注意事项

### 访问控制

- ✅ 公共 API 使用 `public`
- ✅ 内部实现使用 `internal` 或 `private`
- ✅ View 扩展必须标记为 `public`

```swift
public struct MyComponent {
    // 公共属性
    public let configuration: Configuration

    // 内部属性
    private var state: InternalState

    // 公共方法
    public func update() async {
        // 实现细节
    }
}
```

### 条件编译

```swift
#if DEBUG
// 调试代码
#endif

#if os(macOS)
// macOS 特定代码
#endif

#if os(iOS)
// iOS 特定代码
#endif
```

### 没有应用级功能

Swift Package 没有：
- ❌ AppDelegate
- ❌ SceneDelegate
- ❌ Info.plist
- ❌ 应用生命周期

## 最佳实践

### 代码组织
- ✅ 使用 extension 隔离不同 MARK 分组（可选）
- ✅ 保持 MARK 分组顺序统一
- ✅ 语义化命名
- ✅ View 扩展返回 `some View`

### 异步操作
- ✅ 使用 `async/await` 而非闭包回调
- ✅ 使用 `Task.detached` 进行后台工作
- ✅ 使用 `@MainActor` 更新 UI
- ✅ 检查 `Task.isCancelled` 避免不必要工作

### API 设计
- ✅ 提供合理的默认值
- ✅ 支持链式调用
- ✅ 提供便捷方法
- ✅ 添加详细的中文注释

### 预览代码
- ✅ 提供多种场景预览
- ✅ 使用静态工厂方法创建测试数据
- ✅ 设置合适的 frame 尺寸
- ✅ 使用 `#if DEBUG` 条件编译

## 注意事项

1. **线程安全**：UI 更新操作使用 `@MainActor`
2. **内存管理**：避免循环引用，避免在 body 中创建对象
3. **错误处理**：定义清晰的错误类型，妥善处理失败
4. **性能优化**：避免在 body 中进行复杂计算
5. **跨平台**：确保代码在 macOS 和 iOS 上都能编译

遵循此规范可以显著提升代码的可读性、可维护性和开发体验。
