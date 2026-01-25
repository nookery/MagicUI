# MagicUI 开发规范

## 项目概述

MagicUI 是一个 SwiftUI 组件库，提供简洁易用的扩展方法，遵循 Tailwind CSS 的命名风格。

## 核心规则

### 1. Ext 文件与模块化目录

**规则：** 保持 `Ext*.swift` 文件简洁，仅包含公共 API 定义和文档注释。

**目录结构：**
```
Sources/MagicUI/
├── ExtView+Feature.swift          # 仅 API（简洁）
└── Feature/                       # 实现细节和预览
    ├── FeatureModifier.swift      # 实现代码（Modifier、私有类型）
    ├── FeatureComponent.swift     # 组件实现（如 MagicCard）
    └── P+FeaturePreview.swift     # 预览和示例
```

**Ext 文件只包含：**
- ✅ 公共扩展方法（`public extension View`）
- ✅ 完整的文档注释
- ✅ 简单的 Preview 引用
- ❌ 不包含内联的复杂预览代码
- ❌ 不包含实现细节（如 Modifier、私有类型）

**Feature 目录包含：**
- ✅ 实现代码（Modifier、ViewModifier、私有类型）
- ✅ 预览代码（命名为 `P+*.swift`）
- ✅ 组件实现（如 MagicCard、MagicBackground）

**示例：**
```
ExtView+Rounded.swift (仅 API)
├── Rounded/
│   ├── P+RoundedSizes.swift (预览)
│   ├── P+SpecialShapes.swift (预览)
│   └── P+CustomRounded.swift (预览)

ExtView+Hover.swift (仅 API)
├── Hover/
│   ├── HoverScaleModifier.swift (实现)
│   └── P+HoverExtensions.swift (预览)

ExtView+Card.swift (仅 API)
├── Card/
│   ├── MagicCard.swift (组件)
│   ├── P+Materials.swift (预览)
│   ├── P+Colors.swift (预览)
│   └── P+Complex.swift (预览)
```

### 2. 命名规范

**扩展方法命名：**
- 去除 `magic` 前缀，使用简洁的命名
- ✅ `roundedSmall()`, `roundedMedium()`, `roundedLarge()`
- ❌ `magicRoundedSmall()`, `magicRoundedMedium()`

**Tailwind 风格：**
- 使用百分比参数：`hoverScale(110)` 表示 110% 缩放
- 尺寸使用描述性名称：`small`, `medium`, `large`, `xLarge`

**预览文件命名：**
- 使用 `P+` 前缀
- 格式：`P+<Feature><Variant>.swift`
- 示例：`P+RoundedSizes.swift`, `P+CardMaterials.swift`

### 3. API 设计原则

**链式调用友好：**
- 所有扩展方法返回 `some View`
- 支持方法链式调用
- 示例：`Text("Hello").padding().inCardUltraThin().hoverScale(105)`

**参数设计：**
- 提供合理的默认值
- 使用带标签的参数提高可读性
- 支持尾随闭包语法

**文档要求：**
- 所有公共 API 必须有文档注释
- 提供使用示例
- 说明参数和返回值

### 4. 文件组织

**Ext 文件模板：**
```swift
import SwiftUI

/// View扩展 - 功能描述
public extension View {
    /// 简短描述
    ///
    /// 详细说明
    ///
    /// ```swift
    /// Text("Example")
    ///     .methodName()
    /// ```
    func methodName() -> some View {
        self.modifier(MethodModifier())
    }
}

#if DEBUG
    #Preview("Feature") {
        FeaturePreview()
            .frame(height: 700)
            .frame(width: 500)
    }
#endif
```

**预览文件模板：**
```swift
import SwiftUI

/// 功能预览
struct FeaturePreview: View {
    var body: some View {
        VStack(spacing: 20) {
            // 预览内容
        }
        .padding()
        .infinite()
        .inScrollView()
    }
}

#if DEBUG
    #Preview("Feature") {
        FeaturePreview()
            .frame(height: 700)
            .frame(width: 500)
    }
#endif
```

**⚠️ 重要：每个预览必须设置固定尺寸**
- 所有 `#Preview` 必须包含 `.frame(height:)` 和 `.frame(width:)`
- 推荐尺寸：
  - 简单预览：`400x600`
  - 标准预览：`500x700`
  - 复杂预览：`550x750`
- 这确保预览在不同场景下显示一致

### 5. Commit 规范

使用 Conventional Commits 格式（不带 Emoji）：

```
<type>(<scope>): <subject>

<body>

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
```

**Type 类型：**
- `feat` - 新功能
- `fix` - 修复 bug
- `refactor` - 重构
- `chore` - 构建/工具变动
- `docs` - 文档变更

**Scope 范围：**
- `view-ext` - View 扩展
- `button` - 按钮组件
- `card` - 卡片组件
- `rounded` - 圆角扩展
- `hover` - 悬停效果

**示例：**
```
feat(view-ext): add hoverScale extension

Add hoverScale() method for Tailwind-style hover scaling effects.
Support custom scale values and animation durations.

- Add HoverScaleModifier implementation
- Add comprehensive preview examples
- Platform detection for macOS/iOS

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
```

## 常见模式

### 添加新功能时的步骤

1. 创建 `ExtView+Feature.swift` - 定义公共 API
2. 创建 `Feature/` 目录
3. 创建 `Feature/FeatureModifier.swift` - 实现细节
4. 创建 `Feature/P+FeaturePreview.swift` - 预览和示例
5. 测试和预览
6. 提交代码

### 重构现有代码

当发现 `Ext*.swift` 文件包含过多实现代码时：

1. 创建对应的 `Feature/` 目录
2. 将实现代码移到 `Feature/FeatureModifier.swift`
3. 将预览代码移到 `Feature/P+FeaturePreview.swift`
4. 更新 `Ext*.swift`，只保留 API
5. 验证功能正常

## 技术约束

- **平台支持：** macOS 和 iOS（某些功能仅限 macOS，如 hover）
- **最低版本：** iOS 15+, macOS 12+
- **SwiftUI：** 使用 SwiftUI 最新稳定版本 API
- **Swift 格式：** 遵循项目代码风格

## 注意事项

1. **保持简单：** API 设计优先考虑简洁和易用性
2. **向后兼容：** 避免破坏性变更，如需变更应提供迁移指南
3. **性能考虑：** 避免不必要的视图层级和重复计算
4. **测试覆盖：** 为新功能添加预览示例
5. **文档完善：** 每个公共 API 都有清晰的文档和使用示例
