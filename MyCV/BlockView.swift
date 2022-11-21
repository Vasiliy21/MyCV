//
//  BlockView.swift
//  MyCV
//
//  Created by Vasiliy on 16.11.2022.
//

import SwiftUI

struct BlockView: View {

    let title: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .opacity(0.1)
            RoundedRectangle(cornerRadius: 20, style: .circular).stroke(Color .accentColor.self, lineWidth: 5)
            Text(title)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
        }
        .frame(width: 160, height: 150)
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(title: "Введение. Константы и переменные. Базовые типы данных")
    }
}
