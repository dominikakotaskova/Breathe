//
//  BeginView.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-04.
//

import SwiftUI

struct BeginView: View {
    
    @State var session: BreathingSession

    var body: some View {
        VStack (alignment: .center) {
            DescriptionTitle(text: session.title)
                .padding()
            DescriptionText(text: session.description)
            Spacer()
            NavigationLink(destination: BreathingView(session: session).navigationBarBackButtonHidden(true)) {
                ZStack {
                    ButtonLabel()
                    Text("Begin session")
                        .foregroundColor(.black)
                }
            }
        }
        .padding()
    }
}

struct BeginView_Previews: PreviewProvider {
    static var previews: some View {
        BeginView(session: BreathingSession.relaxSessions[0])
    }
}
