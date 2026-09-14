# Mac Desktop App Template

A minimal SwiftUI macOS app template. Requires macOS 14 (Sonoma) and Xcode 15+.

## Quick Start

1. Open the project: `open MacDesktopApp.xcodeproj`
2. Hit ⌘R to run
3. Search for `TEMPLATE` in Xcode (⌘⇧F) to find all customization points

## Run

From the terminal:

```
xcodebuild -project MacDesktopApp.xcodeproj -scheme MacDesktopApp -configuration Debug build
```

## What's Included

- **NavigationSplitView** — sidebar + detail layout with selection state
- **Search** — native `.searchable` toolbar search bar
- **Settings window** — appearance picker (system/light/dark), persisted via `@AppStorage`
- **Keyboard shortcuts** — ⌘1/⌘2 for sidebar navigation
- **Empty states** — `ContentUnavailableView` placeholders throughout
- **External events** — `.handlesExternalEvents` with URL scheme `macdesktopapp://`
- **App icon** — asset catalog with all macOS icon sizes (add your images to `MacDesktopApp/Assets.xcassets/AppIcon.appiconset/`)

## Structure

```
MacDesktopApp/
├── MacDesktopApp.swift     # App entry point
├── AppState.swift          # @Observable state model
├── ContentView.swift       # Main layout
├── SidebarView.swift       # Sidebar
├── DetailView.swift        # Detail pane + empty states
├── SettingsView.swift      # Preferences window
├── AppCommands.swift       # Keyboard shortcuts
├── Assets.xcassets/        # App icon
└── Info.plist              # Bundle config + URL scheme
```

## Customizing

1. Change the bundle identifier in the Xcode project settings (currently `com.example.MacDesktopApp`)
2. Edit `SidebarItem` cases in `AppState.swift` to define your navigation
3. Replace the `ContentUnavailableView` placeholders in `DetailView.swift` with real content
4. Drop icon PNGs into `Assets.xcassets/AppIcon.appiconset/`
5. Update the URL scheme in `Info.plist` if needed
