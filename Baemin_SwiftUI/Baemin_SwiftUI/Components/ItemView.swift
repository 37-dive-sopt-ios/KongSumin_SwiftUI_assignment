//
//  ItemView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct ItemView: View {
    let model: MenuModel
    
    var body: some View {
        VStack(spacing: 6){
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.baeminBackgroundWhite)
                    .frame(width: 58, height: 58)
                Image(model.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            Text(model.title)
                .applyFont(style: .body_r_14)
                .foregroundStyle(.baeminBlack)
        }
        .frame(width: 62, height: 78)
    }
}
