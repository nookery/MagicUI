import SwiftUI

#if DEBUG
    struct ShapeButtonsPreview: View {
        var body: some View {
            VStack(spacing: 20) {
                Text("形状变体")
                    .font(.headline)

                VStack(spacing: 16) {
                    Text("圆形").font(.subheadline)
                    HStack {
                        MagicButton(icon: "star")
                            .magicShape(.circle)

                        MagicButton(icon: "star")
                            .magicTitle("Circle")
                            .magicShape(.circle)
                    }
                }
                .inCard()

                VStack(spacing: 16) {
                    Text("胶囊形").font(.subheadline)
                    HStack {
                        MagicButton(icon: "star")
                            .magicShape(.capsule)

                        MagicButton(icon: "star")
                            .magicTitle("Capsule")
                            .magicShape(.capsule)
                    }
                    .frame(width: 200)
                }
                .inCard()

                VStack(spacing: 16) {
                    Text("矩形").font(.subheadline)
                    HStack {
                        MagicButton(icon: "star")
                            .magicShape(.rectangle)

                        MagicButton(icon: "star")
                            .magicTitle("Rectangle")
                            .magicShape(.rectangle)
                    }
                }
                .inCard()

                VStack(spacing: 16) {
                    Text("圆角矩形").font(.subheadline)
                    HStack {
                        MagicButton(icon: "star")
                            .magicShape(.roundedRectangle)

                        MagicButton(icon: "star")
                            .magicTitle("Rounded Rectangle")
                            .magicShape(.roundedRectangle)
                    }
                }
                .inCard()

                VStack(spacing: 16) {
                    Text("圆角正方形").font(.subheadline)
                    HStack {
                        MagicButton(icon: "star")
                            .magicShape(.roundedSquare)

                        MagicButton(icon: "star")
                            .magicStyle(.primary)
                            .magicShape(.roundedSquare)
                    }
                }
                .inCard()
            }
            .padding()
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .inScrollView()
        }
    }

    #Preview("Shape") {
        ShapeButtonsPreview()
            .frame(height: 600)
            .frame(width: 500)
    }
#endif
