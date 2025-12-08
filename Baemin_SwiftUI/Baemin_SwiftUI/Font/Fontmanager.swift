//
//  Fontmanager.swift
//  Baemin_SwiftUI
//
//  Created by sumin Kong on 12/8/25.
//

import SwiftUI

public extension Font {
    enum FontType {
        case bold
        case semibold
        case regular
        
        var name: String {
            switch self {
            case .bold:
                return "Baemin_Bold"
            case .semibold:
                return "Baemin_SemiBold"
            case .regular:
                return "Baemin_Regular"
            }
        }
    }
}

public struct FontProperty {
    let font: Font.FontType
    let size: CGFloat
    let kern: CGFloat
}

public enum Fontmanager {
    case head_b_24
    case head_b_18
    case head_b_16
    case head_b_14
    case head_b_13
    
    case title_sb_18
    case title_sb_14
    case title_sb_10
    
    case body_r_14
    case body_r_13
    case body_r_12
    case body_r_10
    
    case caption_r_10
    
    public var fontProperty: FontProperty {
        switch self {
        case .head_b_24:
            return FontProperty(font: .bold, size: 24, kern: -2)
        case .head_b_18:
            return FontProperty(font: .bold, size: 18, kern: -2)
        case .head_b_16:
            return FontProperty(font: .bold, size: 16, kern: -2)
        case .head_b_14:
            return FontProperty(font: .bold, size: 14, kern: -4)
        case .head_b_13:
            return FontProperty(font: .bold, size: 13, kern: -6)
        case .title_sb_18:
            return FontProperty(font: .semibold, size: 18, kern: -3)
        case .title_sb_14:
            return FontProperty(font: .semibold, size: 14, kern: -6)
        case .title_sb_10:
            return FontProperty(font: .semibold, size: 10, kern: -6)
        case .body_r_14:
            return FontProperty(font: .regular, size: 14, kern: -4)
        case .body_r_13:
            return FontProperty(font: .regular, size: 13, kern: -3)
        case .body_r_12:
            return FontProperty(font: .regular, size: 12, kern: -3)
        case .body_r_10:
            return FontProperty(font: .regular, size: 10, kern: -4)
        case .caption_r_10:
            return FontProperty(font: .regular, size: 10, kern: -4)
        }
    }
}

public extension Fontmanager {
    var font: Font{
        return .custom(fontProperty.font.name, size: fontProperty.size)
    }
}

struct CustomFontModifier: ViewModifier {
    let style: Fontmanager
    
    func body(content: Content) -> some View {
        content
            .font(style.font)
//            .kerning(style.fontProperty.kern)
    }
}

public extension View {
    func applyFont(style: Fontmanager) -> some View {
        self.modifier(CustomFontModifier(style: style))
    }
}
