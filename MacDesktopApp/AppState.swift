import SwiftUI

// MARK: - TEMPLATE: Add or rename sidebar items here
enum SidebarItem: String, CaseIterable, Identifiable {
    case home = "Home"
    case projects = "Projects"

    var id: String { rawValue }

    var icon: String {
        switch self {
        case .home: "house"
        case .projects: "folder"
        }
    }
}

@Observable
final class AppState {
    var selectedItem: SidebarItem? = .home
    var searchText: String = ""

    @ObservationIgnored
    @AppStorage("sidebarWidth") var sidebarWidth: Double = 200

    @ObservationIgnored
    @AppStorage("appearance") var appearance: String = "system"

    var colorScheme: ColorScheme? {
        switch appearance {
        case "light": .light
        case "dark": .dark
        default: nil
        }
    }
}
