import SwiftUI

// MARK: - Magic Button Style Implementation

/// MagicButton 风格枚举
public enum MagicButtonStyle {
    case primary
    case secondary
    case success
    case warning
    case danger
    case info
    case neutral
}

// MARK: - ButtonStyle Implementation

struct MagicButtonStyleImpl: ButtonStyle {
    let style: MagicButtonStyle
    @Environment(\.colorScheme) var colorScheme

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(foregroundColor(isPressed: configuration.isPressed))
            .background(backgroundColor(isPressed: configuration.isPressed))
            .padding(padding)
            .magicRounded()
            .shadow(color: shadowColor, radius: shadowRadius(configuration.isPressed))
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }

    private var padding: EdgeInsets {
        EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12)
    }

    private func foregroundColor(isPressed: Bool) -> Color {
        switch style {
        case .primary:
            return isPressed ? .white : .accentColor
        case .secondary:
            return .primary
        case .success:
            return isPressed ? .white : .green
        case .warning:
            return isPressed ? .white : .orange
        case .danger:
            return isPressed ? .white : .red
        case .info:
            return isPressed ? .white : .blue
        case .neutral:
            return .secondary
        }
    }

    private func backgroundColor(isPressed: Bool) -> Color {
        switch style {
        case .primary:
            return isPressed ? .accentColor : .accentColor.opacity(0.1)
        case .secondary:
            let baseOpacity: Double = colorScheme == .dark ? 0.15 : 0.1
            let pressedOpacity: Double = colorScheme == .dark ? 0.2 : 0.15
            return isPressed ? Color.primary.opacity(pressedOpacity) : Color.primary.opacity(baseOpacity)
        case .success:
            return isPressed ? Color.green : Color.green.opacity(0.12)
        case .warning:
            return isPressed ? Color.orange : Color.orange.opacity(0.12)
        case .danger:
            return isPressed ? Color.red : Color.red.opacity(0.12)
        case .info:
            return isPressed ? Color.blue : Color.blue.opacity(0.12)
        case .neutral:
            let baseOpacity: Double = colorScheme == .dark ? 0.12 : 0.1
            let pressedOpacity: Double = colorScheme == .dark ? 0.18 : 0.12
            return Color.secondary.opacity(isPressed ? pressedOpacity : baseOpacity)
        }
    }

    private var shadowColor: Color {
        switch style {
        case .primary:
            return .accentColor.opacity(0.2)
        case .secondary:
            return Color.primary.opacity(0.15)
        case .success:
            return Color.green.opacity(0.25)
        case .warning:
            return Color.orange.opacity(0.25)
        case .danger:
            return Color.red.opacity(0.25)
        case .info:
            return Color.blue.opacity(0.25)
        case .neutral:
            return Color.secondary.opacity(0.2)
        }
    }

    private func shadowRadius(_ isPressed: Bool) -> CGFloat {
        isPressed ? 4 : 0
    }
}
