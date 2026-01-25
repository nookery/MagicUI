import SwiftUI

#if DEBUG   
struct DebugBorderButtonsPreview: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("调试边框")
                .font(.headline)

            VStack(spacing: 16) {
                Text("默认边框").font(.subheadline)
                HStack(spacing: 16) {
                    MagicButton(icon: "star")
                        .magicTitle("Default")
                        .magicDebugBorder()

                    MagicButton(icon: "star")
                        .magicDebugBorder()
                }
            }
            .inCard()

            VStack(spacing: 16) {
                Text("自定义边框").font(.subheadline)
                HStack(spacing: 16) {
                    MagicButton(icon: "star")
                        .magicTitle("Red Border")
                        .magicDebugBorder(.red, lineWidth: 2)

                    MagicButton(icon: "star")
                        .magicTitle("Custom Dash")
                        .magicDebugBorder(.blue, dash: [8, 4])
                }
            }
            .inCard()

            VStack(spacing: 16) {
                Text("不同大小").font(.subheadline)
                HStack(spacing: 16) {
                    MagicButton(icon: "star")
                        .magicSize(.small)
                        .magicDebugBorder(.green)

                    MagicButton(icon: "star")
                        .magicSize(.large)
                        .magicDebugBorder(.orange)
                }
            }
            .inCard()
        }
        .padding()
        .inScrollView()
    }
}

#Preview("DebugBorder") {
    DebugBorderButtonsPreview()
        .frame(height: 700)
        .frame(width: 500)
}
#endif
