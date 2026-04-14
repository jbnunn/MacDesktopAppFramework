import SwiftUI

// MARK: - TEMPLATE: Add or modify keyboard shortcuts here
struct AppCommands: Commands {
    let appState: AppState

    var body: some Commands {
        CommandGroup(after: .sidebar) {
            Button("Go to Home") {
                appState.selectedItem = .home
            }
            .keyboardShortcut("1", modifiers: .command)

            Button("Go to Projects") {
                appState.selectedItem = .projects
            }
            .keyboardShortcut("2", modifiers: .command)
        }
    }
}
