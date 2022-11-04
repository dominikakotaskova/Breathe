//
//  ContentView.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-03.
//

import SwiftUI

struct ContentView: View {
    
    @State var showingApp = false
    var body: some View {
        ZStack {
            Color(.yellow).opacity(0.08)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                WelcomeText(headline: "Good morning", text: "Take a moment for yourself.")
                
                CategoryTitle(text: "Relax")
                HorizontalSectionView(sessions: BreathingSession.relaxSessions, selectedSession: BreathingSession.relaxSessions[0])
                
                CategoryTitle(text: "Energize")
                HorizontalSectionView(sessions: BreathingSession.energizeSessions, selectedSession: BreathingSession.energizeSessions[0])
                
                CategoryTitle(text: "Sleep")
                HorizontalSectionView(sessions: BreathingSession.sleepSessions, selectedSession: BreathingSession.sleepSessions[0])
                
            }
            .padding()
        }
    }
    }

 



struct HorizontalSectionView: View {
    var sessions: [BreathingSession]
//    @State var showingSheet = false
    @State var selectedSession: BreathingSession
    
    var body: some View {
        ScrollView(.horizontal) {
                    HStack {
                        ForEach(sessions) { item in
                            NavigationLink(destination: BeginView(session: item)) {
                                ItemView(text: item.title)
                                    .frame(width: 160, height: 200)
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


/*
 ForEach(sessions) { item in
     NavigationLink(destination: BreathingView(session: item)) {
         ItemView(text: item.title)
             .frame(width: 160, height: 200)
     }
 }
 */
