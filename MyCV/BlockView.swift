//
//  BlockView.swift
//  MyCV
//
//  Created by Vasiliy on 16.11.2022.
//

import SwiftUI

struct BlockView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20).stroke(Color .black, lineWidth: 4)
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView()
    }
}
