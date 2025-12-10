//
//  MenuModel.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI


//MARK: - MenuModel
struct MenuModel: Identifiable {
    var id = UUID()
    var title: String
    var image: String
}

extension MenuModel {
    static let dummyData = [
        MenuModel(title: "한그릇", image: "menu1"),
        MenuModel(title: "치킨", image: "menu2"),
        MenuModel(title: "카페·디저트", image: "menu3"),
        MenuModel(title: "피자", image: "menu4"),
        MenuModel(title: "분식", image: "menu5"),
        MenuModel(title: "고기", image: "menu6"),
        MenuModel(title: "찜·탕", image: "menu7"),
        MenuModel(title: "야식", image: "menu8"),
        MenuModel(title: "패스트푸드", image: "menu9"),
        MenuModel(title: "픽업", image: "menu10"),
    ]
}
