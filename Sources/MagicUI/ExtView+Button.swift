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
        .buttonStyle(.plain)
    }
}

// MARK: - Preview

#if DEBUG
    /// 按钮扩展预览
    struct ButtonExtensionPreview: View {
        var body: some View {
            VStack(spacing: 20) {
                Text("Button Extension Examples")
                    .font(.title2)
                    .fontWeight(.semibold)

                Text("Text as Button")
                    .inButtonNoAction()
                    .buttonStyle(.borderedProminent)

                HStack {
                    Image(systemName: "star.fill")
                    Text("Icon + Text")
                }
                .inButtonNoAction()
                .buttonStyle(.bordered)

                Text("Custom Style")
                    .padding()
                    .inButtonNoAction()
                    .background(.blue)
                    .foregroundColor(.white)
                    .roundedMedium()

                HStack(spacing: 15) {
                    Text("Capsule")
                        .inButtonNoAction()
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(.green)
                        .foregroundColor(.white)
                        .capsule()

                    Text("Circle")
                        .inButtonNoAction()
                        .frame(width: 80, height: 80)
                        .background(.orange)
                        .foregroundColor(.white)
                        .roundedFull()
                }
            }
            .padding()
        }
    }

    #Preview("Button Extensions") {
        ButtonExtensionPreview()
            .frame(height: 700)
            .frame(width: 400)
    }
#endif
