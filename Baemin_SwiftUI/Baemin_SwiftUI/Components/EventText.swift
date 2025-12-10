//
//  EventText.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct EventText: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 6){
                Image("b_mart_img")
                Button{} label: {
                    HStack(spacing: 4){
                        Text("전상품 쿠폰팩 + 60%특가")
                            .applyFont(style: .head_b_16)
                            .foregroundStyle(.baeminBlack)
                        Image("ChevronRight")
                    }
                }
                
            }
            Spacer()
        }
        .padding(.leading, 16)
        .padding(.top, 24)
    }
}
