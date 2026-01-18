# MagicUI

[![中文](https://img.shields.io/badge/中文-README-blue)](README_zh.md)

A SwiftUI component library focused on elegant View extensions with chainable APIs.

## Features

- **Centering**: `magicCentered()` - One-click view centering
- **Card Styles**: `inCard()` - Multiple material and color card styles
- **Key-Value Display**: `withMagicValue()` - Elegant key-value presentation
- **Loading States**: `loadingOverlay()`, `skeleton()` - Various loading effects
- **Desktop Layout**: `inDesktop()` - macOS desktop-style layout
- **Icon Styling**: Rich icon extensions and styles
- **Enhanced Buttons**: MagicButton component with custom styles
- **Animated Backgrounds**: Beautiful animated background effects

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

### Centering Layout

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Centered Content")
                .font(.title)
                .magicCentered()
        }
    }
}
```

### Card Styles

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Basic Card")
                .inCardUltraThin()

            Text("Blue Gradient Card")
                .foregroundColor(.white)
                .inCard(gradient: [.blue, .purple])
        }
    }
}
```

### Key-Value Display

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Username")
                .withMagicValue("admin")

            Text("Email")
                .withMagicValue("admin@example.com")
                .withIcon(Image(systemName: "envelope"))
        }
    }
}
```

### Loading States

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    @State private var isLoading = false

    var body: some View {
        VStack {
            Text("Main Content")
                .skeleton(isLoading: isLoading)

            Button("Start Loading") {
                isLoading = true
            }
        }
        .loadingOverlay(isLoading: isLoading, title: "Loading...")
    }
}
```

### Desktop Layout

```swift
import SwiftUI
import MagicUI

struct ContentView: View {
    var body: some View {
        Text("Desktop App Content")
            .inDesktop()
    }
}
```

## Extensions

### Layout Extensions
- `magicCentered()` - Center views with one method
- `inDesktop()` - macOS desktop-style layout

### Style Extensions
- `inCard()` - Multiple card styles (materials, colors, gradients)
- `inCardUltraThin()`, `inCardThin()`, `inCardRegular()`, `inCardThick()` - Predefined material cards

### Data Display
- `withMagicValue()` - Key-value pair display
- `withIcon()` - Add icons to key-value pairs

### Loading States
- `loadingOverlay()` - Full-screen loading overlay
- `loadingSpinner()` - Simple loading indicator
- `skeleton()` - Skeleton screen effect

### Other Extensions
- `iconStyle()` - Icon styling
- `buttonStyle(.magic)` - MagicButton styles
- Animated background components
- Settings UI components

## Requirements

- iOS 17.0+
- macOS 14.0+
- Swift 5.9+

## License

This project is licensed under the MIT License - see the LICENSE file for details.
