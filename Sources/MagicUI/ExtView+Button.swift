import SwiftUI

/// View扩展 - 按钮相关
public extension View {
    /// 将视图包装在无操作的按钮中
    ///
    /// 使用这个方法可以将任何视图转换为按钮形式，但不添加任何动作
    /// 主要用于预览和展示目的
    ///
    /// ```swift
    /// Text("Click Me")
    ///     .inButtonNoAction()
    /// ```
    ///
    /// - Returns: 包装在Button中的视图
    func inButtonNoAction() -> some View {
        Button(action: {}) {
            self
        }
    }
}
