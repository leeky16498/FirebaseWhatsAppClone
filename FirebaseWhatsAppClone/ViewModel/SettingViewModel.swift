//
//  SettingViewModel.swift
//  FirebaseWhatsAppClone
//
//  Created by Kyungyun Lee on 24/03/2022.
//

import Foundation
import SwiftUI

enum SettingsCellViewModel : Int, CaseIterable {
    
    case account
    case notificationsall
    case starredMessages
    
    var title : String {
        switch self {
        case .account:
            return "Account"
        case .notificationsall:
            return "Notification"
        case .starredMessages:
            return "Starred messages"
        }
    }
    
    var imageName : String {
        switch self {
        case .account:
            return "key.fill"
        case .notificationsall:
            return "bell.badge.fill"
        case .starredMessages:
            return "star.fill"
        }
    }
    
    var backgroundColor : Color {
        switch self {
        case .account:
            return .blue
        case .notificationsall:
            return .red
        case .starredMessages:
            return .yellow
        }
    }
    
}
