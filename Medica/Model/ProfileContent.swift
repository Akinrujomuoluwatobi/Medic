//
//  ProfileContent.swift
//  Medica
//
//  Created by Oluwatobiloba Akinrujomu on 26/08/2025.
//



enum ProfileContent: CaseIterable {
    case history
    case personalDetails
    case location
    case paymentMethod
    case settings
    case help
    case logout
    
    var imageSystemName: String {
        switch self {
        case .history:
            "clock.arrow.trianglehead.counterclockwise.rotate.90"
        case .personalDetails:
            "person.crop.circle"
        case .location:
            "location"
        case .paymentMethod:
            "wallet.bifold"
        case .settings:
            "gearshape"
        case .help:
            "questionmark.circle"
        case .logout:
            "rectangle.portrait.and.arrow.right"
        }
    }
    
    var name: String {
        switch self {
        case .history:
            "History"
        case .personalDetails:
            "Personal Details"
        case .location:
            "Location"
        case .paymentMethod:
            "Payment Methods"
        case .settings:
            "Settings"
        case .help:
            "Help"
        case .logout:
            "Logout"
        }
    }
    
    var isArrow: Bool {
        switch self {
        case .history, .personalDetails, .location, .paymentMethod, .settings, .help:
            true
        case .logout:
            false
        }
    }
    
    
}
