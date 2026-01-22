import SwiftUI

/// MagicRounded组件的预览和示例
struct MagicRoundedPreviews: View {
    var body: some View {
        VStack(spacing: 30) {
            // Title
            Text("Magic Rounded Extensions")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)

            // Rounded Sizes
            VStack(spacing: 15) {
                Text("Rounded Sizes")
                    .font(.title2)
                    .fontWeight(.semibold)

                HStack(spacing: 15) {
                    roundedButton("Small", radius: 4, color: .blue)
                    roundedButton("Medium", radius: 8, color: .green)
                    roundedButton("Large", radius: 16, color: .orange)
                    roundedButton("XLarge", radius: 24, color: .purple)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .magicRoundedMedium()

            // Special Shapes
            VStack(spacing: 15) {
                Text("Special Shapes")
                    .font(.title2)
                    .fontWeight(.semibold)

                HStack(spacing: 20) {
                    Text("Capsule")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color.red)
                        .magicCapsule()

                    Text("Circle")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80, height: 80)
                        .background(Color.yellow)
                        .magicCircle()
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .magicRoundedMedium()

            // Custom Rounded
            VStack(spacing: 15) {
                Text("Custom Rounded")
                    .font(.title2)
                    .fontWeight(.semibold)

                HStack(spacing: 20) {
                    Text("Top Only")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.indigo)
                        .magicRoundedCustom(
                            topLeading: 20,
                            topTrailing: 20,
                            bottomLeading: 0,
                            bottomTrailing: 0
                        )

                    Text("Bottom Only")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.teal)
                        .magicRoundedCustom(
                            topLeading: 0,
                            topTrailing: 0,
                            bottomLeading: 20,
                            bottomTrailing: 20
                        )

                    Text("Diagonal")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.cyan)
                        .magicRoundedCustom(
                            topLeading: 20,
                            topTrailing: 4,
                            bottomLeading: 4,
                            bottomTrailing: 20
                        )
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .magicRoundedMedium()

            // Style Presets
            VStack(spacing: 15) {
                Text("Style Presets")
                    .font(.title2)
                    .fontWeight(.semibold)

                HStack(spacing: 20) {
                    VStack(spacing: 8) {
                        Text("Card Title")
                            .font(.headline)
                        Text("Card Content")
                            .font(.caption)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .magicCardRounded()

                    Button("Button") {}
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.pink)
                        .magicButtonRounded()
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .magicRoundedMedium()

            // Comparison with Shadow
            VStack(spacing: 15) {
                Text("Rounded with Shadow")
                    .font(.title2)
                    .fontWeight(.semibold)

                HStack(spacing: 15) {
                    Group {
                        Text("XS")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .magicRoundedSmall()
                            .shadowSm()

                        Text("MD")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .magicRoundedMedium()
                            .shadowMd()
                    }

                    Group {
                        Text("LG")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .magicRoundedLarge()
                            .shadowLg()

                        Text("XL")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.purple)
                            .magicRoundedExtraLarge()
                            .shadowXl()
                    }
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .magicRoundedMedium()
        }
        .padding()
        .inScrollView()
        .frame(minWidth: 600, minHeight: 700)
        .frame(idealHeight: 800)
    }

    // MARK: - Helper Methods

    private func roundedButton(_ title: String, radius: CGFloat, color: Color) -> some View {
        Text(title)
            .font(.title3)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(color)
            .magicRounded(radius: radius)
    }
}

// MARK: - Preview

#Preview {
    MagicRoundedPreviews()
}
