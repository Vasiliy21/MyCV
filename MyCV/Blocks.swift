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
            Block(blockView: BlockView(title: "Константы и переменные. Базовые типы данных"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "Базовые операторы. Работа со строками"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "Операторы ветвлений"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "Типы коллекций. Циклы"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "Функции"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "Вложенные функции. Замыкания"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "ООП. Классы и объекты"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "ООП. Структуры"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "Перечисления"), title: "Основы программирования на Swift"),
            Block(blockView: BlockView(title: "Дополнительные концепции Swift"), title: "Основы программирования на Swift"),
                  
        ]
    }
}
