import SwiftUI

#if DEBUG

    /// 用于创建固定尺寸容器的辅助视图
    private struct Frame<Content: View>: View {
        let width: CGFloat?
        let height: CGFloat?
        let content: Content

        init(
            width: CGFloat? = nil,
            height: CGFloat? = nil,
            @ViewBuilder content: () -> Content
        ) {
            self.width = width
            self.height = height
            self.content = content()
        }

        var body: some View {
            VStack(spacing: 4) {
                if let width = width, let height = height {
                    Text("\(Int(width))×\(Int(height))")
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }

                content
                    .frame(width: width, height: height)
                    .clipShape(Rectangle())
                    .background(
                        Rectangle()
                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [4]))
                            .foregroundStyle(.secondary.opacity(0.5))
                    )
            }
        }
    }

    struct SizeButtonsPreview: View {
        var body: some View {
            VStack(spacing: 20) {
                Text("尺寸变体")
                    .font(.headline)

                // Mini Size
                VStack(spacing: 16) {
                    Text("迷你尺寸").font(.subheadline)
                    HStack(spacing: 16) {
                        MagicButton(icon: "star")
                            .magicTitle("Mini")
                            .magicSize(.mini)

                        MagicButton(icon: "star")
                            .magicSize(.mini)

                        MagicButton(icon: "star")
                            .magicTitle("Mini")
                            .magicSize(.mini)

                        MagicButton(icon: "star")
                            .magicSize(.mini)
                    }
                    .frame(maxWidth: .infinity)
                }
                .inCard()

                // Small Size
                VStack(spacing: 16) {
                    Text("小尺寸").font(.subheadline)
                    HStack(spacing: 16) {
                        MagicButton(icon: "star")
                            .magicTitle("Small")
                            .magicSize(.small)

                        MagicButton(icon: "star")
                            .magicSize(.small)

                        MagicButton(icon: "star")
                            .magicTitle("Small")
                            .magicSize(.small)

                        MagicButton(icon: "star")
                            .magicSize(.small)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .inCard()

                // Regular Size
                VStack(spacing: 16) {
                    Text("常规尺寸").font(.subheadline)
                    HStack(spacing: 16) {
                        MagicButton(icon: "star")
                            .magicTitle("Regular")
                            .magicSize(.regular)

                        MagicButton(icon: "star")
                            .magicSize(.regular)

                        MagicButton(icon: "star")
                            .magicTitle("Regular")
                            .magicSize(.regular)

                        MagicButton(icon: "star")
                            .magicSize(.regular)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .inCard()

                // Large Size
                VStack(spacing: 16) {
                    Text("大尺寸").font(.subheadline)
                    HStack(spacing: 16) {
                        MagicButton(icon: "star")
                            .magicTitle("Large")
                            .magicSize(.large)

                        MagicButton(icon: "star")
                            .magicSize(.large)

                        MagicButton(icon: "star")
                            .magicTitle("Large")
                            .magicSize(.large)

                        MagicButton(icon: "star")
                            .magicSize(.large)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .inCard()

                // Extra Large Size
                VStack(spacing: 16) {
                    Text("超大尺寸").font(.subheadline)
                    HStack(spacing: 16) {
                        MagicButton(icon: "star")
                            .magicTitle("Extra Large")
                            .magicSize(.extraLarge)

                        MagicButton(icon: "star")
                            .magicSize(.extraLarge)

                        MagicButton(icon: "star")
                            .magicTitle("Extra Large")
                            .magicSize(.extraLarge)

                        MagicButton(icon: "star")
                            .magicSize(.extraLarge)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .inCard()

                // Huge Size
                VStack(spacing: 16) {
                    Text("巨大尺寸").font(.subheadline)
                    HStack(spacing: 16) {
                        MagicButton(icon: "star")
                            .magicTitle("Huge")
                            .magicSize(.huge)

                        MagicButton(icon: "star")
                            .magicSize(.huge)

                        MagicButton(icon: "star")
                            .magicTitle("Huge")
                            .magicSize(.huge)

                        MagicButton(icon: "star")
                            .magicSize(.huge)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .inCard()

                VStack(spacing: 16) {
                    Text("自定义尺寸").font(.subheadline)
                    VStack(spacing: 16) {
                        // 40 尺寸
                        HStack(spacing: 16) {
                            MagicButton(icon: "star", size: .custom(40))
                                .magicTitle("40")

                            MagicButton(icon: "star", size: .custom(40))

                            MagicButton(icon: "star", size: .custom(40))
                                .magicTitle("40")

                            MagicButton(icon: "star", size: .custom(40))
                        }

                        // 60 尺寸
                        HStack(spacing: 16) {
                            MagicButton(icon: "star", size: .custom(60))
                                .magicTitle("60")

                            MagicButton(icon: "star", size: .custom(60))

                            MagicButton(icon: "star", size: .custom(60))
                                .magicTitle("60")

                            MagicButton(icon: "star", size: .custom(60))
                        }

                        // 80 尺寸
                        HStack(spacing: 16) {
                            MagicButton(icon: "star", size: .custom(80))
                                .magicTitle("80")

                            MagicButton(icon: "star", size: .custom(80))

                            MagicButton(icon: "star", size: .custom(80))
                                .magicTitle("80")

                            MagicButton(icon: "star", size: .custom(80))
                        }
                    }
                }
                .inCard()

                // Auto Size
                VStack(spacing: 16) {
                    Text("自动尺寸").font(.subheadline)
                    VStack(spacing: 16) {
                        // 小尺寸行
                        HStack(spacing: 16) {
                            Frame(width: 32, height: 32) {
                                MagicButton(icon: "star", size: .auto)
                            }

                            Frame(width: 60, height: 32) {
                                MagicButton(icon: "star", size: .auto)
                                    .magicTitle("Mini")
                            }

                            Frame(width: 40, height: 40) {
                                MagicButton(icon: "star", size: .auto)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                        // 中等尺寸行
                        HStack(spacing: 16) {
                            Frame(width: 120, height: 40) {
                                MagicButton(icon: "star", size: .auto)
                                    .magicTitle("Regular")
                            }

                            Frame(width: 60, height: 60) {
                                MagicButton(icon: "star", size: .auto)
                            }

                            Frame(width: 100, height: 50) {
                                MagicButton(icon: "star", size: .auto)
                                    .magicTitle("Medium")
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                        // 大尺寸
                        Frame(width: 160, height: 80) {
                            MagicButton(icon: "star", size: .auto)
                                .magicTitle("Large")
                        }

                        Frame(width: 100, height: 100) {
                            MagicButton(icon: "star", size: .auto)
                        }

                        Frame(width: 140, height: 70) {
                            MagicButton(icon: "star", size: .auto)
                                .magicTitle("Big")
                        }

                        // 超大尺寸
                        Frame(width: 180, height: 120) {
                            MagicButton(icon: "star", size: .auto)
                                .magicTitle("Extra Large")
                        }

                        Frame(width: 150, height: 150) {
                            MagicButton(icon: "star", size: .auto)
                        }

                        Frame(width: 180, height: 90) {
                            MagicButton(icon: "star", size: .auto)
                                .magicTitle("Huge")
                        }

                        // 巨大尺寸
                        Frame(width: 300, height: 200) {
                            MagicButton(icon: "star", size: .auto)
                                .magicTitle("Giant")
                        }

                        Frame(width: 250, height: 250) {
                            MagicButton(icon: "star", size: .auto)
                        }

                        Frame(width: 280, height: 140) {
                            MagicButton(icon: "star", size: .auto)
                                .magicTitle("Massive")
                        }
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

    #Preview("Size") {
        SizeButtonsPreview()
            .frame(height: 600)
            .frame(width: 500)
    }
#endif
