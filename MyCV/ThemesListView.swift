//
//  ThemesList.swift
//  MyCV
//
//  Created by Vasiliy on 16.11.2022.
//

import SwiftUI

struct ThemesListView: View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink("Основы программирования на Swift") {
                    BlocksGridView(themeName: "Основы")
                }
                NavigationLink("Работа с пользовательским интерфейсом. UIKit"){
                    BlocksGridView(themeName: "UIKit")
                }
                NavigationLink("Работа с данными и сетью"){
                    BlocksGridView(themeName: "Данные и сеть")
                }
                NavigationLink("SwiftUI"){
                    BlocksGridView(themeName: "SwiftUI")
                }
                NavigationLink("Архитектурные паттерны"){
                    BlocksGridView(themeName: "Архитектурные паттерны")
                }
            }
            .navigationTitle("Hard skills")
        }
    }
}

struct ThemesList_Previews: PreviewProvider {
    static var previews: some View {
        ThemesListView()
    }
}
