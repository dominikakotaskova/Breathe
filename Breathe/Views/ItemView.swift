//
//  ItemView.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-03.
//

import SwiftUI

struct ItemView: View {
    
    var text: String
    var body: some View {
        
        ZStack {
            Color(.black).opacity(0.8)
            VStack {
                Text(text)
                    .foregroundColor(Color("WhiteText"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Spacer()
                Image(systemName: "sun.haze")
                    .foregroundColor(Color("WhiteText"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(text: BreathingSession.relaxSessions[0].title)
    }
}
