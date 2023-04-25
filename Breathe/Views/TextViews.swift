//
//  TextViews.swift
//  Breathe
//
//  Created by Dominika Kotásková on 2022-11-03.
//

import SwiftUI

struct CategoryTitle: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 20)
            .padding(.leading, 10)
    }
}

struct WelcomeText: View {
    var headline: String
    var text: String
    var body: some View {
        VStack {
            Text(headline)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(text)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.leading, 10)
    }
}

struct DescriptionTitle: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .padding(.top, 20)
    }
}


struct DescriptionText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.body)
            .multilineTextAlignment(.center)
    }
}

struct ButtonLabel: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .strokeBorder(Color.black, lineWidth: 2)
            .frame(width: 200, height: 60)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CategoryTitle(text: "Relax")
            WelcomeText(headline: "Good morning", text: "Take a moment for yourself.")
            DescriptionTitle(text: "Box breathing")
            DescriptionText(text: "This method will help you relax by lowering your heartrate.")
            ButtonLabel()
        }
    }
}
