//
//  ButtonsLinksView.swift
//  MyCV
//
//  Created by Vasiliy on 19.11.2022.
//

import SwiftUI

struct ButtonsLinksView: View {
    
    let image: String
    let title: String
    let textColor: Color
    let buttonColor: Color
    let urlLink: String
    let codeAction: () -> Void
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(textColor)
                .frame(width: UIScreen.main.bounds.width - 22, height: 130)
            VStack(spacing: 15) {
                HStack(spacing: 10) {
                    Image(systemName: image)
                    Text(title)
                }
                .font(.largeTitle)
                .foregroundColor(buttonColor)

                HStack {
                    Button(action: codeAction) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(
                                width: UIScreen.main.bounds.width/2 - 22,
                                height: 45
                            )
                            .foregroundColor(buttonColor)
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(buttonColor))
                            .overlay(
                                HStack(spacing: 10) {
                                    Image(systemName: "qrcode")
                                    Text("QRcode")
                                }
                                    .font(.title)
                                    .foregroundColor(textColor))
                    }

                    Link(destination: URL(string: urlLink)!) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(
                                width: UIScreen.main.bounds.width/2 - 22,
                                height: 45
                            )
                            .foregroundColor(buttonColor)
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(buttonColor))
                            .overlay(
                                HStack(spacing: 10) {
                                    Image(systemName: "link")
                                    Text("Open link")
                                }
                                    .font(.title)
                                    .foregroundColor(textColor))
                    }
                }
            }
        }
        .padding([.top, .bottom], 6)
    }
}
struct ButtonsLinksView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsLinksView(
            image: "phone",
            title: "Phone",
            textColor: .green,
            buttonColor: .white,
            urlLink: "m",
            codeAction: {}
        )
    }
}
