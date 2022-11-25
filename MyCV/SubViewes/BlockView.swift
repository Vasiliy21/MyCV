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
            RoundedRectangle(cornerRadius: 40)
                .opacity(0.1)
            RoundedRectangle(cornerRadius: 40, style: .continuous)
                .stroke(Color .accentColor.self, lineWidth: 5)
            Text(title)
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding()
        }
        .frame(width: UIScreen.main.bounds.width - 30, height: 90)
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(
            title: "Введение. Константы и переменные. Базовые типы данных"
        )
    }
}
