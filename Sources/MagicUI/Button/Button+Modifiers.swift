import SwiftUI

// MARK: - MagicButton Modifiers

public extension MagicButton {
    /// 设置按钮图标
    /// - Parameter name: SF Symbols 图标名称
    /// - Returns: 更新后的按钮
    func magicIcon(_ name: String) -> MagicButton {
        var button = MagicButton(
            icon: name,
            title: self.title,
            style: self.style,
            size: self.size,
            disabledReason: self.disabledReason,
            popoverContent: self.popoverContent,
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 设置按钮标题
    /// - Parameter text: 标题文本，传入 nil 可以移除标题
    /// - Returns: 更新后的按钮
    func magicTitle(_ text: String?) -> MagicButton {
        var button = MagicButton(
            icon: self.icon,
            title: text,
            style: self.style,
            size: self.size,
            disabledReason: self.disabledReason,
            popoverContent: self.popoverContent,
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 设置按钮样式
    /// - Parameter style: 按钮样式（.primary 或 .secondary）
    /// - Returns: 更新后的按钮
    func magicStyle(_ style: Style) -> MagicButton {
        var button = MagicButton(
            icon: self.icon,
            title: self.title,
            style: style,
            size: self.size,
            disabledReason: self.disabledReason,
            popoverContent: self.popoverContent,
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 设置按钮大小
    /// - Parameter size: 按钮大小（.auto、.small、.regular 或 .large）
    /// - Returns: 更新后的按钮
    ///
    /// 示例：
    /// ```swift
    /// // 使用固定尺寸
    /// button.magicSize(.regular)
    ///
    /// // 使用自动尺寸（根据容器大小自动调整）
    /// button.magicSize(.auto)
    /// ```
    func magicSize(_ size: Size) -> MagicButton {
        var button = MagicButton(
            icon: self.icon,
            title: self.title,
            style: self.style,
            size: size,
            disabledReason: self.disabledReason,
            popoverContent: self.popoverContent,
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 设置按钮禁用状态
    /// - Parameter reason: 禁用原因，显示在提示中。传入 nil 可以启用按钮
    /// - Returns: 更新后的按钮
    func magicDisabled(_ reason: String?) -> MagicButton {
        var button = MagicButton(
            icon: self.icon,
            title: self.title,
            style: self.style,
            size: self.size,
            disabledReason: reason,
            popoverContent: self.popoverContent,
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 设置按钮的弹出内容
    /// - Parameter content: 弹出内容的视图构建器
    /// - Returns: 更新后的按钮
    ///
    /// 示例：
    /// ```swift
    /// button.magicPopover {
    ///     VStack {
    ///         Text("标题")
    ///         Text("详细信息")
    ///     }
    ///     .padding()
    /// }
    /// ```
    func magicPopover<Content: View>(@ViewBuilder content: @escaping () -> Content) -> MagicButton {
        var button = MagicButton(
            icon: self.icon,
            title: self.title,
            style: self.style,
            size: self.size,
            disabledReason: self.disabledReason,
            popoverContent: AnyView(content()),
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 设置按钮的背景色
    /// - Parameter color: 自定义背景色
    /// - Returns: 修改后的按钮
    ///
    /// 示例：
    /// ```swift
    /// // 使用预定义颜色
    /// button.magicBackgroundColor(.blue)
    ///
    /// // 使用自定义颜色
    /// button.magicBackgroundColor(Color(hex: "#FF5733"))
    /// ```
    func magicBackgroundColor(_ color: Color) -> MagicButton {
        var button = MagicButton(
            icon: self.icon,
            title: self.title,
            style: .custom(color),
            size: self.size,
            disabledReason: self.disabledReason,
            popoverContent: self.popoverContent,
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 设置按钮的背景视图
    /// - Parameter background: 自定义背景视图
    /// - Returns: 修改后的按钮
    ///
    /// 示例：
    /// ```swift
    /// // 使用渐变色背景
    /// button.magicBackground(
    ///     LinearGradient(
    ///         colors: [.blue, .purple],
    ///         startPoint: .leading,
    ///         endPoint: .trailing
    ///     )
    /// )
    ///
    /// // 使用天空主题背景
    /// button.magicBackground(MagicBackground.dawnSky)
    /// ```
    func magicBackground<V: View>(_ background: V) -> MagicButton {
        var button = MagicButton(
            icon: self.icon,
            title: self.title,
            style: .customView(AnyView(background)),
            size: self.size,
            disabledReason: self.disabledReason,
            popoverContent: self.popoverContent,
            customBackgroundColor: self.customBackgroundColor,
            preventDoubleClick: self.preventDoubleClick,
            loadingStyle: self.loadingStyle,
            action: self.action
        )
        button.buttonId = self.buttonId
        return button
    }

    /// 显示虚线边框，用于调试布局
    /// - Parameters:
    ///   - color: 边框颜色
    ///   - lineWidth: 线条宽度
    ///   - dash: 虚线模式，默认为 [4]
    /// - Returns: 修改后的按钮
    ///
    /// 示例：
    /// ```swift
    /// button.magicDebugBorder()
    /// button.magicDebugBorder(.red, lineWidth: 2)
    /// button.magicDebugBorder(.blue, dash: [8, 4])
    /// ```
    func magicDebugBorder(
        _ color: Color = .gray,
        lineWidth: CGFloat = 1,
        dash: [CGFloat] = [4]
    ) -> some View {
        self.overlay(
            Rectangle()
                .strokeBorder(
                    style: StrokeStyle(
                        lineWidth: lineWidth,
                        dash: dash
                    )
                )
                .foregroundStyle(color.opacity(0.5))
        )
    }
}

#if DEBUG
    #Preview("Basic") {
        BasicButtonsPreview()
            .frame(height: 600)
            .frame(width: 500)
    }
#endif
