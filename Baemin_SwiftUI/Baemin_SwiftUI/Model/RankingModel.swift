//
//  RankingModel.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/11/25.
//

import SwiftUI

struct RankingModel: Identifiable {
    var id = UUID()
    var store: String
    var reviewCount: String
    var title: String
    var image: String
    var discount: String
    var price: String
    var cost: String
    var minOrderPrice: String
}

extension RankingModel {
    static let dummyData = [
        RankingModel(store: "백억포차코", reviewCount: "5.0 (1,973)", title: "[대박 기여움] 포차코인형", image: "pho", discount: "25%", price: "12,000원", cost: "16,000원", minOrderPrice: "최소주문금액 없음"),
        RankingModel(store: "백억포차코", reviewCount: "5.0 (1,973)", title: "(1인) 피자 + 포차코 Set", image: "phocha", discount: "20%", price: "12,000원", cost: "16,000원", minOrderPrice: "최소주문금액 없음"),
        RankingModel(store: "백억포차코", reviewCount: "5.0 (1,973)", title: "[대박 기여움] 포차코인형", image: "pho", discount: "25%", price: "12,000원", cost: "16,000원", minOrderPrice: "최소주문금액 없음"),
        RankingModel(store: "백억포차코", reviewCount: "5.0 (1,973)", title: "(1인) 피자 + 포차코 Set", image: "phocha", discount: "20%", price: "12,000원", cost: "16,000원", minOrderPrice: "최소주문금액 없음"),
        
    ]
}
