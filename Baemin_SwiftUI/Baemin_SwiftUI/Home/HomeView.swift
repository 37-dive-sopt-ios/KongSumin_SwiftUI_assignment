//
//  HomeView.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            TopBar()

            SearchBar()
        }
    }
}

#Preview {
    HomeView()
}
