import Foundation

struct NotificationData: Identifiable, Codable {
    let id = UUID()
    var title: String
    var description: String
    var timestamp: Date
    var type: NotificationType
    var isRead: Bool
}

enum NotificationType: String, CaseIterable, Codable {
    case info, warning, error
}

struct VisualizationData: Codable {
    var notifications: [NotificationData]
    var notificationCount: Int {
        notifications.count
    }
    var unreadCount: Int {
        notifications.filter { !$0.isRead }.count
    }
}