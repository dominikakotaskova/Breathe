//
//  BreathingView.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-03.
//

import SwiftUI

struct BreathingView: View {
    
    @State var session: BreathingSession
    @State private var sessionPaused = false
    
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            Text("00:34/1:05")
            
            Text(session.title)
                .font(.title)
                .padding()
            
            Spacer()

            Lottie(name: "breathe")
                .frame(width: 300, height: 300)
    
            
            Text("Inhale")
                .font(.largeTitle)
            
            Spacer()
                    
            Button(action: {
                sessionPaused.toggle()
            }) {
                ZStack {
                    ButtonLabel()
                    sessionPaused ? Text("Resume session") : Text("Pause session")
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            
            NavigationLink(destination: FinishView(session: session).navigationBarBackButtonHidden(true)) {
                Text("Finish earlier")
                    .foregroundColor(.black)
            }
        }
        .padding()
        
    }
}

struct BreathingView_Previews: PreviewProvider {
    static var previews: some View {
        BreathingView(session: BreathingSession.sleepSessions[0])
    }
}
