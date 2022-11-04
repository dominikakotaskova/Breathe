//
//  FinishView.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-04.
//

import SwiftUI

struct FinishView: View {
    @State var session: BreathingSession
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "checkmark.circle")
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding()
            Text("Session completed")
            Spacer()
            NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                ZStack {
                    ButtonLabel()
                    Text("Finish")
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            NavigationLink(destination: BeginView(session: session).navigationBarBackButtonHidden(true)) {
                Text("Repeat session")
                    .foregroundColor(.black)
            }
        }
    }
}

struct FinishView_Previews: PreviewProvider {
    static var previews: some View {
        FinishView(session: BreathingSession.relaxSessions[0])
    }
}
