//
//  CVView.swift
//  MyCV
//
//  Created by Vasiliy on 21.11.2022.
//

import SwiftUI

struct CVView: View {
    var body: some View {
        ScrollView {

            TitleView(title: "Личные данные")
            Text("Начинающий IOS разработчик. Изучаю Swift на протяжении года. Почти прошёл курс по основам Swift.\nУмею работать с документацией. Хочу попасть на работу в большую компанию, чтобы продолжить путь в мобильной разработке и стать Senior.")
                .padding(.bottom)

            TitleView(title: "Основные умения")
            Text("Foundation | GCD lv.1 | HIG | InterfaceBuilder | git | Autolayout | CocoaPods | MVC | URLSession lv.1 | VIPER | ARC lv.1 | SwiftUI lv.1 | Unit-тесты | SOLID lv.1 | UI-тесты | Аккаунт Apple Store | REST API | OperationQueue lv.1 | UIKit | Clean Swift | Верстка кодом | Alamofire lv.1 | Принципы ООП | Realm | JSON | Core Data lv.1 | MVVM lv.1 | MVP | Moya lv.1 | Notifications lv.1")
                .padding(.bottom)

            TitleView(title: "Образование")
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("РЭУ ИМЕНИ Г.В. ПЛЕХАНОВА")
                            .font(.title2)
                            .fontWeight(.medium)
                        Text("Факультет бизнеса «Капитаны» Менеджмент")
                    }
                    Spacer()
                    Text("июнь 2020г. - июнь 2024г.")
                }
                    Text("\nВ основе программы подготовки лежит учебно-прикладная и практическая работа по проектированию и внедрению собственного бизнес-проекта в инновационной сфере")
            }
            .padding(.bottom)
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("IOS SWIFTBOOK")
                            .font(.title2)
                            .fontWeight(.medium)
                        Text("Школа мобильной разработки IOS")
                    }
                    Spacer()
                    Text("май 2022г. - октябрь 2022г.")
                }
                    Text("\nВ основе программы лежат основные знания для освоения профессии IOS разработчик уровня Junior")
            }
            .padding(.bottom)

            TitleView(title: "Опыт работы")
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("СТАЖЁР")
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("Дивизион «ТРАНЗАКЦИОННЫЙ БИЗНЕС»")
                        .font(.title3)
                        .fontWeight(.medium)
                    Text("Публичное акционерное общество «Сбербанк России»")
                }
                Spacer()
                Text("июнь 2020г. - июнь 2024г.")
            }
            Text("\nРаботал с Макросами (VBA) в Exel | Делал сводные таблицы и писал функции в Exel | Изучил базовый курс по SQL в Сбершколе")
        }
        .navigationTitle("Curriculum vitae")
        .padding(.horizontal)
    }

}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        CVView()
    }
}

struct TitleView: View {

    let title: String

    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(.bottom, 1)
            Spacer()
        }
    }
}
