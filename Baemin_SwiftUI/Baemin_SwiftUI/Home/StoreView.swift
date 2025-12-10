//
//  StoreView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/11/25.
//

import SwiftUI

struct StoreView: View {
    let categories: [StoreModel]
    
    private let storeRows = [
        GridItem(.fixed(74), spacing: 0)
    ]
    
    var body: some View {
        VStack(spacing:0){
            spacerView
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: storeRows, spacing: 12) {
                    ForEach(categories) { item in
                        ItemView(model: item)
                    }
                    
                }
                .padding(.horizontal, 16)
                .frame(height: 80)
            }
            .frame(height: 96)
            spacerView
        }
    }
    
    
    
    private var spacerView: some View {
        Rectangle()
            .fill(.baeminBackgroundWhite)
            .frame(height: 10)
    }
}
