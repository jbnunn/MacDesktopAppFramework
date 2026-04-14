import SwiftUI

// MARK: - TEMPLATE: Add your app preferences here
struct SettingsView: View {
    @Environment(AppState.self) private var appState

    var body: some View {
        @Bindable var appState = appState

        Form {
            Picker("Appearance", selection: $appState.appearance) {
                Text("System").tag("system")
                Text("Light").tag("light")
                Text("Dark").tag("dark")
            }
            .pickerStyle(.segmented)
        }
        .formStyle(.grouped)
        .frame(width: 350, height: 100)
        .preferredColorScheme(appState.colorScheme)
    }
}
