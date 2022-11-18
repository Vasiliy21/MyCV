//
//  QrCodeView.swift
//  MyCV
//
//  Created by Vasiliy on 17.11.2022.
//

import SwiftUI

struct QrCodeView: View {

    let image: Image

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 350, height: 350)
            .padding()
    }
}

struct QrCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QrCodeView(image: "")
    }
}
