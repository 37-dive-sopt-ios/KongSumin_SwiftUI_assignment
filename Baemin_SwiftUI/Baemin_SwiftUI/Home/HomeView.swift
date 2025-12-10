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
            VStack(spacing: 0) {
                TopBar()
                
                SearchBar()
                
                EventText()
                
                CategoryView(categories: MenuModel.dummyData)
                
                StoreView(categories: StoreModel.dummyData)
                
                BannerView(categories: BannerModel.dummyData)
                
                RankingView(categories: RankingModel.dummyData)
            }
        }
    }
}

#Preview {
    HomeView()
}
 
