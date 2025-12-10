//
//  MainTabView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedIndex: Int = 0
    
    var body: some View {
        
        VStack(spacing:0){
            selectedContentView
            MainTabBar(selectedIndex: $selectedIndex)
        }
        .ignoresSafeArea(edges: .all)
    }
}


extension MainTabView {
    @ViewBuilder
    private var selectedContentView: some View {
        switch selectedIndex {
        case 0:
            HomeView()
        case 1:
            Color.gray.ignoresSafeArea()
        case 2:
            Color.blue.ignoresSafeArea()
        case 3:
            Color.green.ignoresSafeArea()
        case 4:
            Color.yellow.ignoresSafeArea()
        default:
            EmptyView()
        }
    }
}


#Preview {
    MainTabView()
}
