//
//  TopBar.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack {
            Button{} label: {
                HStack {
                    Text("우리집")
                        .applyFont(style: .head_b_16)
                        .foregroundStyle(.baeminBlack)
                    Image("Polygon")
                }
            }
            Spacer()
            Button{} label: {
                Image("baemin_discount")
            }
            Button{} label: {
                Image("alarm")
            }            
            .padding(.leading,12)
            Button{} label: {
                Image("cart")
            }
            .padding(.leading,12)
        }
        .padding([.leading, .trailing], 16)
        .padding(.top, 9)
        .padding(.bottom, 10)
    }
}
