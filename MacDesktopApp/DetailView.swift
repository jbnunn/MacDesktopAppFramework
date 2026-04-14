import SwiftUI

struct DetailView: View {
    @Environment(AppState.self) private var appState

    var body: some View {
        Group {
            if let item = appState.selectedItem {
                detailContent(for: item)
            } else {
                ContentUnavailableView("No Selection",
                    systemImage: "sidebar.left",
                    description: Text("Select an item from the sidebar."))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    // MARK: - TEMPLATE: Replace these placeholders with your real views
    @ViewBuilder
    private func detailContent(for item: SidebarItem) -> some View {
        switch item {
        case .home:
            ContentUnavailableView("Welcome",
                systemImage: "hand.wave",
                description: Text("This is your starting point. Customize this view."))
        case .projects:
            ContentUnavailableView("No Projects",
                systemImage: "folder.badge.plus",
                description: Text("Projects will appear here."))
        }
    }
}
