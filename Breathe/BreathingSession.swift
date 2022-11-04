//
//  BreathingSession.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-03.
//

import Foundation

struct BreathingSession: Identifiable {
    var id: UUID = UUID()
    var title: String
    var length: Int
    var color: String
    var description: String
    
    static let relaxSessions: [BreathingSession] = [
        BreathingSession(title: "Box Breathing", length: 4, color: "Green", description: "This method will help you relax by decreasing your heart rate."),
        BreathingSession(title: "Double Inhale", length: 4, color: "Green", description: "Double inhale - method will help you relax by decreasing your heart rate."),
        BreathingSession(title: "Long exhale", length: 4, color: "Green", description: "Long exhale method will help you relax by decreasing your heart rate.")
    ]
    
    
    static let energizeSessions: [BreathingSession] = [
        BreathingSession(title: "Coffee inhaling", length: 4, color: "Green", description: "Coffee inhaling method will help you relax by decreasing your heart rate."),
        BreathingSession(title: "Short inhales", length: 4, color: "Green", description: "Short inhales method will help you relax by decreasing your heart rate."),
    ]
    
    static let sleepSessions: [BreathingSession] = [
        BreathingSession(title: "Non-sleep deep rest", length: 4, color: "Green", description: "Non-sleep deep rest method will help you relax by decreasing your heart rate."),
        BreathingSession(title: "6 second exhale", length: 4, color: "Green", description: "6 second exhale method will help you relax by decreasing your heart rate."),
        BreathingSession(title: "Unguided meditation", length: 4, color: "Green", description: "Unguided meditation method will help you relax by decreasing your heart rate.")
    ]
}


