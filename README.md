# MagicUI

[![中文](https://img.shields.io/badge/中文-README-blue)](README_zh.md)

A comprehensive SwiftUI component library for iOS and macOS applications.

## Features

- **Buttons**: Customizable MagicButton with various styles and interactions
- **Backgrounds**: Beautiful animated background components
- **Icons**: Extensive icon library with SF Symbols integration
- **Cards**: Flexible card components for content display
- **Loading**: Loading indicators and progress views
- **Settings**: Configurable settings UI components
- **Tooltips**: Advanced tooltip system
- **Shapes**: Custom shape components
- **Desktop**: macOS desktop simulation components
- **Extensions**: SwiftUI View extensions for enhanced functionality

## Installation

### Swift Package Manager

Add MagicUI as a dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/nookery/MagicUI.git", from: "1.0.0")
]
```

Or add it directly in Xcode:

1. Go to File → Add Packages...
2. Enter the repository URL: `https://github.com/nookery/MagicUI.git`
3. Choose the version you want to use

## Usage

### MagicButton

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        MagicButton("Click Me") {
            print("Button tapped!")
        }
        .buttonStyle(.magic)
    }
}
```

### MagicBackground

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        ZStack {
            MagicBackground(.ocean)
            VStack {
                Text("Hello World")
                    .foregroundColor(.white)
            }
        }
    }
}
```

### Icon Extensions

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .iconStyle(.large)
            Image(systemName: "heart.fill")
                .iconStyle(.medium)
        }
    }
}
```

## Components

### Core Components
- `MagicButton` - Customizable button component
- `MagicCard` - Content display card
- `MagicCentered` - Centered content wrapper
- `MagicFeature` - Feature showcase component
- `MagicKeyValue` - Key-value display component

### Backgrounds
- `MagicBackground` - Animated background component
- `MagicBackgroundGroup` - Background collection

### UI Extensions
- `View+MagicHStack` - Enhanced HStack
- `View+MagicVStack` - Enhanced VStack
- `View+MagicRounded` - Rounded corner extensions
- `View+MagicTextGradient` - Text gradient effects

### Settings
- `MagicSettingView` - Settings UI components
- Various setting row types (Toggle, Slider, Picker)

### Icons & Assets
- Icon shape components
- Icon container views
- Image extensions for various icon types

## Requirements

- iOS 17.0+
- macOS 14.0+
- Swift 5.9+

## License

This project is licensed under the MIT License - see the LICENSE file for details.
