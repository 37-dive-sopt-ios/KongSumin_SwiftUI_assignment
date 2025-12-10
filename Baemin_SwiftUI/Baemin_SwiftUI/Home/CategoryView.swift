//
//  CategoryView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct CategoryView: View {
    
    let categories: [MenuModel]
    
    @State private var selectedTab = 0
    
    private let menuTitles = [
        "음식배달",
        "픽업",
        "장보기·쇼핑",
        "선물하기",
        "혜택모아보기"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            menuTabBar
            Divider()
            
            tabContentView
            
            Divider()
            moreMenuButton
            Divider()
        }
            
    }
    
    //MARK: - MenuTabBar
    private var menuTabBar: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 14) {
                ForEach(menuTitles.indices, id: \.self) { index in
                    tabItem(title: menuTitles[index], index: index)
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    //MARK: - MenuTabContentView
    private var tabContentView: some View {
        TabView(selection: $selectedTab) {
            ForEach(menuTitles.indices, id: \.self) { item in
                Group {
                    switch item {
                    case 0: FoodDeliveryView
                    default: CustomView
                    }
                }
                .tag(item)
            }
        }
        .frame(height: 168)
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
    
    //MARK: - MenuView
    private let menuRows = [
        GridItem(.fixed(78), spacing: 14),
        GridItem(.fixed(78), spacing: 14)
    ]
    
    
    private var FoodDeliveryView: some View {
        LazyHGrid(rows: menuRows) {
            ForEach(categories) { item in
                ItemView(model: item)
            }
        }
    }
    
    private var CustomView: some View {
        Image("pocha")
            .resizable()
            .scaledToFit()
    }
    
    
    
    //MARK: - MoreMenu
    private var moreMenuButton: some View {
        Button{}label: {
            HStack(alignment: .center, spacing: 0){
                Text("\(menuTitles[selectedTab])")
                    .foregroundStyle(.baeminBlack)
                    .applyFont(style: .head_b_14)
                Text("에서 더보기")
                    .foregroundStyle(.baeminBlack)
                    .applyFont(style: .body_r_14)
                Image("ChevronRight")
                    .padding(.leading, 4)
            }
            .frame(maxWidth: .infinity, minHeight: 34)
        }
    }
    
    //MARK: - Function
    private func tabItem(title: String, index: Int) -> some View {
        VStack(spacing: 4) {
            Text(title)
                .foregroundStyle(selectedTab == index ? .baeminBlack : .baeminGray300)
                .applyFont(style: selectedTab == index ? .head_b_18 : .title_sb_18)
                .onTapGesture {withAnimation(.default) {
                    selectedTab = index
                    }
                }
            Rectangle()
                .frame(height: 3)
                .foregroundStyle(selectedTab == index ? .baeminBlack : .clear)
        }
    }
    
}
