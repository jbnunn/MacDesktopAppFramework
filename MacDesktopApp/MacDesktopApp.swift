import SwiftUI

// MARK: - TEMPLATE: Rename this struct and configure your app
@main
struct MacDesktopApp: App {
    @State private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
        }
        .defaultSize(width: 900, height: 600)
        .windowResizability(.contentMinSize)
        .handlesExternalEvents(matching: ["*"])
        .commands {
            AppCommands(appState: appState)
        }

        Settings {
            SettingsView()
                .environment(appState)
        }
    }
}
