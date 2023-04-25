//
//  ContentView.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-03.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        ZStack {
            Color(.blue).opacity(0.08)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                WelcomeText(headline: "Good morning", text: "Take a moment for yourself.")
                
                Lottie(name: "sun")
                    .frame(width: 300, height: 100, alignment: .leading)
                
                CategoryTitle(text: "Relax")
                HorizontalSectionView(sessions: BreathingSession.relaxSessions, selectedSession: BreathingSession.relaxSessions[0])
                
                CategoryTitle(text: "Energize")
                HorizontalSectionView(sessions: BreathingSession.energizeSessions, selectedSession: BreathingSession.energizeSessions[0])
                
                CategoryTitle(text: "Sleep")
                HorizontalSectionView(sessions: BreathingSession.sleepSessions, selectedSession: BreathingSession.sleepSessions[0])
                
            }
            .scrollIndicators(.hidden)
        }
    }
}

 



struct HorizontalSectionView: View {
    var sessions: [BreathingSession]
    @State var selectedSession: BreathingSession
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(sessions) { item in
                    NavigationLink(destination: BeginView(session: item)) {
                        ItemView(text: item.title)
                            .frame(width: 160, height: 200)
                            .padding(.leading, 10)
                            .padding(.bottom, 10)
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
