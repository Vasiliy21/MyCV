//
//  BlocksGridView.swift
//  MyCV
//
//  Created by Vasiliy on 16.11.2022.
//

import SwiftUI

struct BlocksGridView: View {
    
    let themeName: String
    let blocks: [Block]
    private let columns = [
        GridItem(.adaptive(minimum: UIScreen.main.bounds.width - 30))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(blocks, id: \.blockView.title) { block in
                    block.blockView
                }
            }
        }
        .navigationTitle(themeName)
    }
}

struct BlocksGridView_Previews: PreviewProvider {
    static var previews: some View {
        BlocksGridView(themeName: "Заголовок", blocks: Block.getBlock())
    }
}
