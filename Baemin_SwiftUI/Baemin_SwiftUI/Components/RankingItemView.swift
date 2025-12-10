//
//  RankingItemView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/11/25.
//

import SwiftUI

struct RankingItemView: View {
    var model : RankingModel
    
    var body: some View {
        VStack(spacing: 9){
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.baeminBackgroundWhite)
                    .frame(width: 145, height: 145)
                Image(model.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 145, height: 145)
                    .cornerRadius(8)
            }
            VStack(spacing: 6){
                HStack{
                    Text(model.store)
                        .applyFont(style: .body_r_12)
                        .foregroundStyle(.baeminGray600)
                    Image("Star")
                    Text(model.reviewCount)
                        .applyFont(style: .body_r_12)
                        .foregroundStyle(.baeminGray600)
                }
                
                Text(model.title)
                    .applyFont(style: .body_r_14)
                    .foregroundStyle(.baeminBlack)
                HStack{
                    Text(model.discount)
                        .applyFont(style: .head_b_14)
                        .foregroundStyle(.red)
                    Text(model.price)
                        .applyFont(style: .head_b_14)
                        .foregroundStyle(.baeminBlack)
                    Spacer()
                }
                HStack{
                    Text(model.cost)
                        .applyFont(style: .body_r_12)
                        .foregroundStyle(.baeminGray600)
                        .strikethrough(true, color: .baeminGray600)
                    Spacer()
                }
                HStack{
                    Text(model.minOrderPrice)
                        .applyFont(style: .head_b_13)
                        .foregroundStyle(.baeminPurple1)
                    Spacer()
                }
                
                
                
            }
            
        }
        .frame(width: 145, height: 243)
    }
}
