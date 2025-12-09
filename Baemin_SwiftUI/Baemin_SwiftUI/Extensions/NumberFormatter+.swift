//
//  NumberFormatter+.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/9/25.
//

import Foundation

extension NumberFormatter {
    static func formatNumber(_ value: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: value)) ?? "\(value)"
    }
}
