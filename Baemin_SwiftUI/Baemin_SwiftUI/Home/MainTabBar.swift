//
//  MainTabBar.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct MainTabBar: View {
    @Binding var selectedIndex: Int
    
    private let tabItems: [(icon: String, title: String)] = [
        ("home", "홈"),
        ("shopping", "장보기·쇼핑"),
        ("heart", "찜"),
        ("order", "주문내역"),
        ("face", "마이배민")
    ]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(tabItems.indices, id: \.self) { item in
                tabItem(item: item)
            }
        }
        .padding(.horizontal, 16)
        .frame(height: 60)
        .background(.baeminWhite)
    }
}


extension MainTabBar {
    
    @ViewBuilder
    private func tabItem(item: Int) -> some View {
        let isSelected = selectedIndex == item
        
        VStack(spacing: 5) {
            Image(tabItems[item].icon)
                .resizable()
                .frame(width: 24, height: 24)
            Text(tabItems[item].title)
                .applyFont(style: isSelected ? .body_r_10 : .title_sb_10)
                .foregroundStyle(isSelected ? .baeminBlack : .baeminGray700)
        }
        .frame(maxWidth: .infinity)
        .contentShape(Rectangle())
        .onTapGesture {
            selectedIndex = item
        }
    }
}
