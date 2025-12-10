//
//  SearchBar.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct SearchBar: View {
    @State private var inputText = ""
    
    var body: some View {
        HStack {
            ZStack(alignment: .topLeading) {
                TextField("찾아라!맛있는 음식과 맛집", text: $inputText)
                    .applyFont(style: .body_r_14)
                    .foregroundStyle(.baeminGray300)
            }
            .padding(.leading, 17)
            Button{} label: {
                Image("search")
                    .foregroundColor(.baeminGray700)
            }
            .padding(.trailing, 17)
        }
        .frame(height: 40)
        .overlay(RoundedRectangle(cornerRadius: 50)
            .stroke(.baeminBlack, lineWidth: 1)
        )
        .padding(.horizontal, 16)
    }
}
