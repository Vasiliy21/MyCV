//
//  QrCodeView.swift
//  MyCV
//
//  Created by Vasiliy on 17.11.2022.
//

import SwiftUI

struct QrCodeView: View {

    let image: String

    var body: some View {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaleEffect(1.3)
                .clipShape(Rectangle())
                .frame(width: 310, height: 310)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 5))
    }
}

struct QrCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QrCodeView(image: "TG")
    }
}
