//
//  BannerView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct BannerView: View {
    let categories: [BannerModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing:0){
                ForEach(categories) { banner in
                    Image(banner.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 410, height: 130)
                        .clipped()
                }
            }
        }
        .frame(height: 114)
    }
}
