import SwiftUI

// MARK: - Magic Button Size

/// MagicButton 尺寸枚举
public enum MagicButtonSize {
    case mini
    case small
    case regular
    case large
    case extraLarge
    case custom(CGFloat)
}

// MARK: - Size Helpers

extension MagicButtonSize {
    func padding() -> EdgeInsets {
        switch self {
        case .mini:
            return EdgeInsets(top: 2, leading: 6, bottom: 2, trailing: 6)
        case .small:
            return EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8)
        case .regular:
            return EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12)
        case .large:
            return EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16)
        case .extraLarge:
            return EdgeInsets(top: 16, leading: 20, bottom: 16, trailing: 20)
        case .custom(let value):
            let padding = value * 0.25
            return EdgeInsets(top: padding, leading: padding, bottom: padding, trailing: padding)
        }
    }

    func font() -> Font {
        switch self {
        case .mini:
            return .caption2
        case .small:
            return .caption
        case .regular:
            return .body
        case .large:
            return .title3
        case .extraLarge:
            return .title2
        case .custom:
            return .body
        }
    }
}
