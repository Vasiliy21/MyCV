//
//  Blocks.swift
//  MyCV
//
//  Created by Vasiliy on 16.11.2022.
//

import SwiftUI

struct Block {
    let blockView: BlockView
    let title: String

    static func getBlock() -> [Block] {
        [

            Block(
                blockView: BlockView(
                    title: "Константы и переменные. Базовые типы данных"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "Базовые операторы. Работа со строками"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "Операторы ветвлений"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "Типы коллекций. Циклы"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "Функции"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "Вложенные функции. Замыкания"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "ООП. Классы и объекты"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "ООП. Структуры"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "Перечисления"
                ),
                title: "Основы программирования на Swift"
            ),
            Block(
                blockView: BlockView(
                    title: "Дополнительные концепции Swift"
                ),
                title: "Основы программирования на Swift"
            ),


            Block(
                blockView: BlockView(
                    title: "Знакомство с Xcode"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Hello World"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Разбор проекта TrafficLight"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Знакомство с фреймворокм UIKit. Работа с документацией"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Контроль и приведение типов. Тип данных Any"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Переходы и передача данных между экранами"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Архитектура MVC. Personal Quiz"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Personal Quiz"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Протоколы"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Разбор проекта ColorizedApp"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Работа с табличными представлениями"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Разбор проекта ContactList"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Жизненный цикл View. Анатомия приложения."
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),
            Block(
                blockView: BlockView(
                    title: "Управление памятью. ARC"
                ),
                title: "Работа с пользовательским интерфейсом. UIKit"
            ),


            Block(
                blockView: BlockView(
                    title: "Менеджеры зависимостей. Фреймворк Spring"
                ),
                title: "Работа с данными и сетью"
            ),
            Block(
                blockView: BlockView(
                    title: "Работа с сетью. URLSession (1 часть)"
                ),
                title: "Работа с данными и сетью"
            ),
            Block(
                blockView: BlockView(
                    title: "Работа с сетью. URLSession (2 часть)"
                ),
                title: "Работа с данными и сетью"
            ),
            Block(
                blockView: BlockView(
                    title: "Работа с сетью. Alamofire"
                ),
                title: "Работа с данными и сетью"
            ),
            Block(
                blockView: BlockView(
                    title: "Хранение данных"
                ),
                title: "Работа с данными и сетью"
            ),
            Block(
                blockView: BlockView(
                    title: "Хранение данных. CoreData"
                ),
                title: "Работа с данными и сетью"
            ),
            Block(
                blockView: BlockView(
                    title: "Хранение данных. Realm"
                ),
                title: "Работа с данными и сетью"
            ),
            Block(
                blockView: BlockView(
                    title: "Async-Await"
                ),
                title: "Работа с данными и сетью"
            ),


            Block(
                blockView: BlockView(
                    title: "Знакомство со SwiftUI"
                ),
                title: "SwiftUI"
            ),
            Block(
                blockView: BlockView(
                    title: "Элементы объектной библиотеки SwiftUI. Модификаторы"
                ),
                title: "SwiftUI"),
            Block(
                blockView: BlockView(
                    title: "Работа с зависимостями данных"
                ),
                title: "SwiftUI"
            ),
            Block(
                blockView: BlockView(
                    title: "Использование SwiftUI совместно с UIKit."
                ),
                title: "SwiftUI"
            ),
            Block(
                blockView: BlockView(
                    title: "Lists & Navigation."
                ),
                title: "SwiftUI"
            ),
            Block(
                blockView: BlockView(
                    title: "Работа с анимацией и графикой."
                ),
                title: "SwiftUI"
            ),
            Block(
                blockView: BlockView(
                    title: "GridView"
                ),
                title: "SwiftUI"
            ),


            Block(
                blockView: BlockView(
                    title: "Тестирование"
                ),
                title: "Архитектурные паттерны"
            ),
            Block(
                blockView: BlockView(
                    title: "Архитектурные паттерны в iOS"
                ),
                title: "Архитектурные паттерны"
            ),
            Block(
                blockView: BlockView(
                    title: "MVVM на практике"
                                    ),
                title: "Архитектурные паттерны"
            ),
            Block(
                blockView: BlockView(
                    title: "Boxing. MVVM в SwiftUI"
                ),
                title: "Архитектурные паттерны"
            ),
            Block(
                blockView: BlockView(
                    title: "VIPER"
                ),
                title: "Архитектурные паттерны"
            ),
            Block(
                blockView: BlockView(
                    title: "VIPER на практике"
                ),
                title: "Архитектурные паттерны"
            ),
            Block(
                blockView: BlockView(
                    title: "CleanSwift"
                ),
                title: "Архитектурные паттерны"
            ),
            Block(
                blockView: BlockView(
                    title: "CleanSwift на практике"
                ),
                title: "Архитектурные паттерны"
            )
        ]
    }
}
