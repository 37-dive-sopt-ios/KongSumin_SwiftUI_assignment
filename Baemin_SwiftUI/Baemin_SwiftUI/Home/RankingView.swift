//
//  RankingView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/11/25.
//

import SwiftUI

struct RankingView: View {
    
    
    let categories: [RankingModel]
    
    private let rankingRows = [
        GridItem(.fixed(145), spacing: 0)
    ]
    
    var body: some View {
        ZStack {
            VStack{
                LinearGradient(
                    colors: [
                        .baeminPurple,
                        .baeminWhite
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(height: 150)
                Spacer()
            }
            VStack{
                HStack(spacing:0){
                    Text("우리 동네 한그릇 인기 랭킹")
                        .foregroundStyle(.baeminWhite)
                        .applyFont(style: .title_sb_18)
                    Image("info")
                    Spacer()
                    Button{}label: {
                        HStack{
                            Text("전체보기")
                                .foregroundStyle(.baeminWhite)
                            Image("Chevron__right")
                                .foregroundStyle(.baeminWhite)
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 24)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHGrid(rows: rankingRows, spacing: 10){
                        ForEach(categories) { index in
                            RankingItemView(model: index)
                        }
                    }
                    .padding(.horizontal, 16)
                    .frame(height: 250)
                }
                
                
                Spacer()
            }
            
        }
        .frame(height: 303)
    }
}
