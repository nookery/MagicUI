import SwiftUI

public extension View {
    /// 将视图包装在材质背景的卡片中
    /// - Parameter material: 材质类型，默认为 ultraThinMaterial
    /// - Returns: 包装在卡片中的视图
    func inCard(_ material: Material = .ultraThinMaterial) -> some View {
        MagicCard(background: AnyView(Color.clear.background(material))) {
            self
        }
    }

    /// 将视图包装在颜色背景的卡片中
    /// - Parameter color: 背景颜色
    /// - Returns: 包装在卡片中的视图
    func inCard(color: Color) -> some View {
        MagicCard(background: color) {
            self
        }
    }

    /// 将视图包装在自定义背景的卡片中
    /// - Parameter background: 自定义背景视图
    /// - Returns: 包装在卡片中的视图
    func inCard<Background: View>(background: Background) -> some View {
        MagicCard(background: background) {
            self
        }
    }

    /// 将视图包装在渐变背景的卡片中
    /// - Parameters:
    ///   - colors: 渐变颜色数组
    ///   - startPoint: 渐变起始点
    ///   - endPoint: 渐变结束点
    /// - Returns: 包装在渐变卡片中的视图
    func inCard(
        gradient colors: [Color],
        startPoint: UnitPoint = .leading,
        endPoint: UnitPoint = .trailing
    ) -> some View {
        MagicCard(background: AnyView(LinearGradient(
            colors: colors,
            startPoint: startPoint,
            endPoint: endPoint
        ))) {
            self
        }
    }

    /// 将视图包装在毛玻璃效果的卡片中
    /// - Returns: 包装在毛玻璃卡片中的视图
    func inCardUltraThin() -> some View {
        inCard(.ultraThinMaterial)
    }

    /// 将视图包装在薄材质卡片中
    /// - Returns: 包装在薄材质卡片中的视图
    func inCardThin() -> some View {
        inCard(.thinMaterial)
    }

    /// 将视图包装在常规材质卡片中
    /// - Returns: 包装在常规材质卡片中的视图
    func inCardRegular() -> some View {
        inCard(.regularMaterial)
    }

    /// 将视图包装在厚材质卡片中
    /// - Returns: 包装在厚材质卡片中的视图
    func inCardThick() -> some View {
        inCard(.thickMaterial)
    }
}

// MARK: - Preview

#if DEBUG
#Preview("Card Extensions - Materials") {
    VStack(spacing: 16) {
        Text("材质卡片")
            .font(.headline)

        Text("基础卡片")
            .inCardUltraThin()

        Text("薄材质")
            .inCardThin()

        Text("常规材质")
            .inCardRegular()

        Text("厚材质")
            .inCardThick()
    }
    .padding()
}

#Preview("Card Extensions - Colors") {
    VStack(spacing: 16) {
        Text("颜色卡片")
            .font(.headline)

        Text("蓝色卡片")
            .foregroundColor(.white)
            .inCard(color: .blue)

        Text("红色半透明")
            .inCard(color: .red.opacity(0.8))

        Text("绿色渐变")
            .foregroundColor(.white)
            .inCard(gradient: [.green, .green.opacity(0.6)])
    }
    .padding()
}

#Preview("Card Extensions - Complex") {
    VStack(spacing: 16) {
        Text("复杂内容卡片")
            .font(.headline)

        HStack {
            Image(systemName: "person.circle.fill")
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                Text("用户名")
                    .font(.headline)
                Text("用户描述")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.secondary)
        }
        .inCardUltraThin()

        VStack(alignment: .leading, spacing: 8) {
            Text("文章标题")
                .font(.headline)
            Text("这是一段较长的文章描述，用来展示卡片中多行内容的显示效果。")
                .font(.body)
                .foregroundColor(.secondary)
            HStack {
                Image(systemName: "hand.thumbsup.fill")
                Text("点赞")
                Spacer()
                Image(systemName: "bubble.right.fill")
                Text("评论")
            }
            .font(.caption)
            .foregroundColor(.secondary)
        }
        .inCard(gradient: [.blue, .purple])
        .foregroundColor(.white)
    }
    .padding()
}
#endif
