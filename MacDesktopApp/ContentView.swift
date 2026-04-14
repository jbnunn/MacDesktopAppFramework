import SwiftUI

struct ContentView: View {
    @Environment(AppState.self) private var appState

    var body: some View {
        @Bindable var appState = appState

        NavigationSplitView {
            SidebarView()
        } detail: {
            DetailView()
        }
        .searchable(text: $appState.searchText, prompt: "Search…")
        .frame(minWidth: 600, minHeight: 400)
        .preferredColorScheme(appState.colorScheme)
        .onOpenURL { url in
            // MARK: - TEMPLATE: Handle incoming URL scheme here
            print("Received URL: \(url)")
        }
    }
}
