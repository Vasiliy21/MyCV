//
//  LinksView.swift
//  MyCV
//
//  Created by Vasiliy on 05.10.2022.
//

import SwiftUI

struct LinksView: View {

    @Binding var linksViewIsPresented: Bool

    var body: some View {

        VStack {
            HStack {
                Spacer()

                Button("Back") {
                    linksViewIsPresented.toggle()
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .padding()
            }


            Spacer()

            ButtonLinkView(image: "message", title: "Telegram", textColor: .blue, buttonColor: .white, action: {})
            ButtonLinkView(image: "message", title: "WhatsApp", textColor: .green, buttonColor: .white, action: {})
            ButtonLinkView(image: "message", title: "VK", textColor: Color(hue: 0.611, saturation: 1.0, brightness: 1.0), buttonColor: .white, action: {})
            ButtonLinkView(image: "envelope", title: "Email", textColor: .gray, buttonColor: .white, action: {})
            ButtonLinkView(image: "phone", title: "Phone number", textColor: .gray, buttonColor: .white, action: {})

            Spacer()
        }
    }
}


struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            LinksView(linksViewIsPresented: .constant(true))
        }
    }
}

struct ButtonLinkView: View {

    let image: String
    let title: String
    let textColor: Color
    let buttonColor: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width - 42, height: 65)
                .foregroundColor(buttonColor)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3).foregroundColor(textColor))
                .overlay(
                    HStack(spacing: 10) {
                        Image(systemName: image)
                        Text(title)
                    }
                        .font(.largeTitle)
                        .foregroundColor(textColor))
        }
        .padding([.top, .bottom], 6)
    }
}
