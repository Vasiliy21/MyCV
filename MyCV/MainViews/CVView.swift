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
            HStack {
                Text("Начинающий IOS разработчик. Изучаю Swift на протяжении полутора лет. Прошёл курс по основам Swift.\nУмею работать с документацией. Хочу попасть на работу в большую компанию, чтобы продолжить свой путь в мобильной разработке и стать Senior.")
                
                Spacer()
                
            }
            .padding(.bottom)
            
            TitleView(title: "Основные умения")
            HStack {
                Text("Foundation | GCD | HIG | InterfaceBuilder | git | Autolayout | CocoaPods | MVC | URLSession | VIPER | ARC | SwiftUI | Unit-тесты | SOLID | \nUI-тесты | Аккаунт Apple Store | REST API | OperationQueue | UIKit | Clean Swift | \nВерстка кодом | Alamofire | Принципы ООП | Realm | JSON | Core Data | MVVM | MVP | Moya | Notifications")
                
                Spacer()
                
            }
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
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("СТАЖЁР")
                            .font(.title2)
                            .fontWeight(.medium)
                        Text("Дивизион «ТРАНЗАКЦИОННЫЙ БИЗНЕС»")
                            .font(.headline)
                            .fontWeight(.medium)
                        Text("ПАО «Сбербанк России»")
                    }
                    Spacer()
                    Text("июнь 2020г. - июнь 2024г.")
                }
                Text("\n-Работал с Макросами (VBA) в Exel\n-Делал сводные таблицы и писал функции в Exel\n-Изучил базовый курс по SQL в Сбершколе")
            }
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
