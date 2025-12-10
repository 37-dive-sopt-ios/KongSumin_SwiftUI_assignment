//
//  BannerModel.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/10/25.
//

import SwiftUI


//MARK: - BannerModel
struct BannerModel: Identifiable {
    var id = UUID()
    var image: String
}

extension BannerModel {
    static let dummyData = [
        BannerModel(image: "po_banner"),
        BannerModel(image: "po_banner1"),
        BannerModel(image: "po_banner2")
    ]
}
