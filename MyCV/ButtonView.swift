//
//  ButtonView.swift
//  MyCV
//
//  Created by Vasiliy on 05.10.2022.
//

import SwiftUI

struct ButtonView: View {

    let title: String
    let color: Color
    let action: () -> Void

    var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 27, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
            }
        .padding(.top, 15)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ButtonView(title: "Button", color: .red, action: {})
        }
    }
}
