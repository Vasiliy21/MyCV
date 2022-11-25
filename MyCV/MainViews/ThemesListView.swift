//
//  ThemesList.swift
//  MyCV
//
//  Created by Vasiliy on 16.11.2022.
//

import SwiftUI

struct ThemesListView: View {

    private let blocks = Block.getBlock()

    var body: some View {
        List {
            NavigationLink("Основы программирования на Swift") {
                BlocksGridView(
                    themeName: "Основы",
                    blocks: blocks.filter {
                        $0.title == "Основы программирования на Swift"
                    }
                )
            }
            NavigationLink("Работа с пользовательским интерфейсом. UIKit") {
                BlocksGridView(
                    themeName: "UIKit",
                    blocks: blocks.filter {
                        $0.title ==
                        "Работа с пользовательским интерфейсом. UIKit"
                    }
                )
            }
            NavigationLink("Работа с данными и сетью"){
                BlocksGridView(
                    themeName: "Данные и сеть",
                    blocks: blocks.filter {
                        $0.title == "Работа с данными и сетью"
                    }
                )
            }
            NavigationLink("SwiftUI"){
                BlocksGridView(
                    themeName: "SwiftUI",
                    blocks: blocks.filter {
                        $0.title == "SwiftUI"
                    }
                )
            }
            NavigationLink("Архитектурные паттерны"){
                BlocksGridView(
                    themeName: "Паттерны",
                    blocks: blocks.filter {
                        $0.title == "Архитектурные паттерны"
                    }
                )
            }
        }
        .navigationTitle("Hard skills")
    }
}

struct ThemesList_Previews: PreviewProvider {
    static var previews: some View {
        ThemesListView()
    }
}
