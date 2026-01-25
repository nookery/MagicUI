import SwiftUI

// MARK: - Button Loading Implementation

struct ButtonLoadingOverlay: ViewModifier {
    let isLoading: Bool
    let style: MagicLoadingView.Style

    func body(content: Content) -> some View {
        content.overlay(
            Group {
                if isLoading {
                    MagicLoadingView(
                        style: style,
                        isLoading: true,
                        foregroundColor: .white
                    )
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.3))
                }
            }
        )
    }
}
