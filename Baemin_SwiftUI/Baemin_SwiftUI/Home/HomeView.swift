//
//  HomeView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                TopBar()
                
                Section {
                    VStack(spacing: 0) {
                        CategoryView(categories: MenuModel.dummyData)
                        StoreView(categories: StoreModel.dummyData)
                        BannerView(categories: BannerModel.dummyData)
                        RankingView(categories: RankingModel.dummyData)
                    }
                } header: {
                    SearchBar()
                        .background(Color.baeminBackgroundWhite)
                        .zIndex(1)
                }
            }
        }
        .background(Color.baeminBackgroundWhite)
    }
}

#Preview {
    HomeView()
}
 
