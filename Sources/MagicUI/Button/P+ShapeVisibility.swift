import SwiftUI

#if DEBUG
struct ShapeVisibilityButtonsPreview: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("显示变体")
                .font(.headline)

            VStack(spacing: 16) {
                Text("始终显示形状").font(.subheadline)
                HStack {
                    MagicButton(icon: "star")
                        .magicTitle("Always")
                        .magicShapeVisibility(.always)

                    MagicButton(icon: "star")
                        .magicStyle(.primary)
                        .magicTitle("Always")
                        .magicShapeVisibility(.always)
                }
            }
            .inCard()

            VStack(spacing: 16) {
                Text("悬停时显示形状").font(.subheadline)
                HStack {
                    MagicButton(icon: "star")
                        .magicTitle("On Hover")
                        .magicShapeVisibility(.onHover)

                    MagicButton(icon: "star")
                        .magicStyle(.primary)
                        .magicTitle("On Hover")
                        .magicShapeVisibility(.onHover)
                }
            }
            .inCard()
        }
        .padding()
    }
}

#Preview("ShapeVisibility") {
    ShapeVisibilityButtonsPreview()
        .frame(height: 700)
        .frame(width: 500)
}
#endif
