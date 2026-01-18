import SwiftUI

/// View扩展 - 提供Magic文字渐变色的便捷方法
public extension View {
    /// 为文字添加渐变色效果
    ///
    /// 使用这个方法可以轻松为任何文字视图添加渐变色效果
    /// 支持多种渐变方向和预设颜色组合
    ///
    /// ```swift
    /// Text("Hello World")
    ///     .magicGradient(colors: [.blue, .purple])
    /// ```
    ///
    /// - Parameters:
    ///   - colors: 渐变色数组，至少需要2个颜色
    ///   - startPoint: 渐变起始点，默认为leading
    ///   - endPoint: 渐变结束点，默认为trailing
    /// - Returns: 带有渐变色的文字视图
    func magicGradient(
        colors: [Color],
        startPoint: UnitPoint = .leading,
        endPoint: UnitPoint = .trailing
    ) -> some View {
        self.foregroundStyle(
            LinearGradient(
                colors: colors,
                startPoint: startPoint,
                endPoint: endPoint
            )
        )
    }

    /// 为文字添加水平渐变色效果（简化版本）
    ///
    /// 这是`magicGradient`的简化版本，专门用于水平渐变
    /// 适用于大多数常见的文字渐变需求
    ///
    /// ```swift
    /// Text("Hello World")
    ///     .magicGradient(colors: [.blue, .purple])
    /// ```
    ///
    /// - Parameter colors: 渐变色数组，至少需要2个颜色
    /// - Returns: 带有水平渐变色的文字视图
    func magicGradient(colors: [Color]) -> some View {
        magicGradient(
            colors: colors,
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    /// 为文字添加预设的彩虹渐变色效果
    ///
    /// 使用预设的彩虹渐变色，从红色到紫色
    ///
    /// ```swift
    /// Text("Rainbow")
    ///     .magicRainbowGradient()
    /// ```
    ///
    /// - Returns: 带有彩虹渐变色的文字视图
    func magicRainbowGradient() -> some View {
        magicGradient(
            colors: [.red, .orange, .yellow, .green, .blue, .indigo, .purple],
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    /// 为文字添加预设的蓝紫渐变色效果
    ///
    /// 使用预设的蓝紫渐变色，类似你提供的示例
    ///
    /// ```swift
    /// Text("Blue Purple")
    ///     .magicBluePurpleGradient()
    /// ```
    ///
    /// - Returns: 带有蓝紫渐变色的文字视图
    func magicBluePurpleGradient() -> some View {
        magicGradient(
            colors: [.blue, .purple],
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    /// 为文字添加预设的日落渐变色效果
    ///
    /// 使用预设的日落渐变色，从橙色到粉色
    ///
    /// ```swift
    /// Text("Sunset")
    ///     .magicSunsetGradient()
    /// ```
    ///
    /// - Returns: 带有日落渐变色的文字视图
    func magicSunsetGradient() -> some View {
        magicGradient(
            colors: [.orange, .pink, .purple],
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    /// 为文字添加预设的海洋渐变色效果
    ///
    /// 使用预设的海洋渐变色，从蓝色到青色
    ///
    /// ```swift
    /// Text("Ocean")
    ///     .magicOceanGradient()
    /// ```
    ///
    /// - Returns: 带有海洋渐变色的文字视图
    func magicOceanGradient() -> some View {
        magicGradient(
            colors: [.blue, .cyan, .teal],
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    /// 为文字添加垂直渐变色效果
    ///
    /// 从顶部到底部的垂直渐变
    ///
    /// ```swift
    /// Text("Vertical")
    ///     .magicVerticalGradient(colors: [.blue, .purple])
    /// ```
    ///
    /// - Parameter colors: 渐变色数组，至少需要2个颜色
    /// - Returns: 带有垂直渐变色的文字视图
    func magicVerticalGradient(colors: [Color]) -> some View {
        magicGradient(
            colors: colors,
            startPoint: .top,
            endPoint: .bottom
        )
    }

    /// 为文字添加对角线渐变色效果
    ///
    /// 从左上角到右下角的对角线渐变
    ///
    /// ```swift
    /// Text("Diagonal")
    ///     .magicDiagonalGradient(colors: [.blue, .purple])
    /// ```
    ///
    /// - Parameter colors: 渐变色数组，至少需要2个颜色
    /// - Returns: 带有对角线渐变色的文字视图
    func magicDiagonalGradient(colors: [Color]) -> some View {
        magicGradient(
            colors: colors,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

// MARK: - Preview

#if DEBUG
#Preview("Magic Text Gradient - All Examples") {
    ScrollView {
        VStack(spacing: 30) {
            // 标题
            VStack(spacing: 10) {
                Text("Magic Text Gradient")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("文字渐变色效果展示")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.bottom, 20)

            // 基础示例
            VStack(alignment: .leading, spacing: 15) {
                Text("基础渐变")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)

                Text("Hello MagicKit!")
                    .font(.system(size: 60, weight: .bold, design: .rounded))
                    .magicGradient(colors: [.blue, .purple])
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color.gray.opacity(0.1))
                    .padding(.horizontal)
            }

            // 预设渐变
            VStack(alignment: .leading, spacing: 15) {
                Text("预设渐变")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)

                Group {
                    Text("Rainbow")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .magicRainbowGradient()
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color.gray.opacity(0.1))
                        .padding(.horizontal)

                    Text("Blue Purple")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .magicBluePurpleGradient()
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color.gray.opacity(0.1))
                        .padding(.horizontal)

                    Text("Sunset")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .magicSunsetGradient()
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color.gray.opacity(0.1))
                        .padding(.horizontal)

                    Text("Ocean")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .magicOceanGradient()
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color.gray.opacity(0.1))
                        .padding(.horizontal)
                }
            }

            // 方向渐变
            VStack(alignment: .leading, spacing: 15) {
                Text("方向渐变")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)

                Group {
                    Text("Vertical")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .magicVerticalGradient(colors: [.green, .blue])
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color.gray.opacity(0.1))
                        .padding(.horizontal)

                    Text("Diagonal")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .magicDiagonalGradient(colors: [.red, .yellow])
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .background(Color.gray.opacity(0.1))
                        .padding(.horizontal)
                }
            }

            // 自定义渐变
            VStack(alignment: .leading, spacing: 15) {
                Text("自定义渐变")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)

                Text("Custom")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .magicGradient(
                        colors: [.pink, .purple, .blue],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(Color.gray.opacity(0.1))
                    .padding(.horizontal)
            }

            // 使用说明
            VStack(alignment: .leading, spacing: 10) {
                Text("使用方法")
                    .font(.title2)
                    .fontWeight(.semibold)

                VStack(alignment: .leading, spacing: 8) {
                    CodeLine(code: "Text(\"Hello\").magicGradient(colors: [.blue, .purple])")
                    CodeLine(code: "Text(\"Rainbow\").magicRainbowGradient()")
                    CodeLine(code: "Text(\"Ocean\").magicOceanGradient()")
                    CodeLine(code: "Text(\"Custom\").magicVerticalGradient(colors: [.red, .blue])")
                }
                .padding()
                .background(Color.secondary.opacity(0.1))
                .cornerRadius(8)
            }
            .padding(.horizontal)
        }
        .padding(.vertical, 30)
    }
    .frame(height: 750)
}

// MARK: - Helper Views

private struct CodeLine: View {
    let code: String

    var body: some View {
        Text(code)
            .font(.system(.body, design: .monospaced))
            .foregroundColor(.primary)
            .padding(.vertical, 4)
    }
}

#endif
