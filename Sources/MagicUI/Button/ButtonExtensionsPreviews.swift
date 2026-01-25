import SwiftUI

/// Button 扩展的预览和示例
struct ButtonExtensionsPreviews: View {
    @State private var isLoading = false

    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                // Title
                Text("Button Extensions")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                // Style Examples
                VStack(spacing: 15) {
                    Text("Button Styles")
                        .font(.title2)
                        .fontWeight(.semibold)

                    VStack(spacing: 12) {
                        Button("Primary") { }
                            .buttonStyle(.primary)

                        Button("Secondary") { }
                            .buttonStyle(.secondary)

                        Button("Success") { }
                            .buttonStyle(.success)

                        Button("Warning") { }
                            .buttonStyle(.warning)

                        Button("Danger") { }
                            .buttonStyle(.danger)

                        Button("Info") { }
                            .buttonStyle(.info)

                        Button("Neutral") { }
                            .buttonStyle(.neutral)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .roundedMedium()

                // Size Examples
                VStack(spacing: 15) {
                    Text("Button Sizes")
                        .font(.title2)
                        .fontWeight(.semibold)

                    HStack(spacing: 12) {
                        Button("Mini") { }
                            .buttonStyle(.primary)
                            .buttonSize(.mini)

                        Button("Small") { }
                            .buttonStyle(.primary)
                            .buttonSize(.small)

                        Button("Regular") { }
                            .buttonStyle(.primary)
                            .buttonSize(.regular)

                        Button("Large") { }
                            .buttonStyle(.primary)
                            .buttonSize(.large)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .roundedMedium()

                // Loading Example
                VStack(spacing: 15) {
                    Text("Loading State")
                        .font(.title2)
                        .fontWeight(.semibold)

                    VStack(spacing: 12) {
                        Button("Start Loading") {
                            withAnimation {
                                isLoading.toggle()
                            }
                        }
                        .buttonStyle(.primary)
                        .buttonLoading(isLoading)

                        Button("With Dots") { }
                            .buttonStyle(.success)
                            .buttonLoading(true, style: .dots)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .roundedMedium()

                // Combined Example
                VStack(spacing: 15) {
                    Text("Combined Features")
                        .font(.title2)
                        .fontWeight(.semibold)

                    VStack(spacing: 12) {
                        Button(action: { }) {
                            HStack {
                                Image(systemName: "heart.fill")
                                Text("点赞")
                            }
                        }
                        .buttonStyle(.danger)
                        .buttonSize(.large)
                        .buttonTooltip("点击点赞")

                        Button(action: { }) {
                            HStack {
                                Image(systemName: "star.fill")
                                Text("收藏")
                            }
                        }
                        .buttonStyle(.primary)
                        .buttonSize(.large)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .roundedMedium()
            }
            .padding()
        }
    }
}

#if DEBUG
    #Preview("Button Extensions") {
        ButtonExtensionsPreviews()
            .frame(height: 700)
            .frame(width: 500)
    }
#endif
