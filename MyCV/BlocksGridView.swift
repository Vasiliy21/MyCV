//
//  BlocksGridView.swift
//  MyCV
//
//  Created by Vasiliy on 16.11.2022.
//

import SwiftUI

struct BlocksGridView: View {
    
    let themeName: String
    private let blocks = Block.getBlock()
    private let columns = [GridItem(.adaptive(minimum: 160))]
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(blocks, id: \.blockView.title) { block in
                        block.blockView
                    }
                }
            }
            .navigationTitle(themeName)
            .padding(.horizontal)
    }
}

struct BlocksGridView_Previews: PreviewProvider {
    static var previews: some View {
        BlocksGridView(themeName: "Заголовок")
    }
}
