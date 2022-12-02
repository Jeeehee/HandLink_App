//
//  Font.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/11/24.
//

import UIKit

struct Font {
    enum SCDream: String {
        case scDream4
        case scDream5
        case scDream6
        case scDream8
        
        var name: String {
            switch self {
            case .scDream4: return "SCDream4"
            case .scDream5: return "SCDream5"
            case .scDream6: return "SCDream6"
            case .scDream8: return "SCDream8"
            }
        }
    }
    
    enum NotoSans: String {
        case bold
        case medium
        case regular
        
        var name: String {
            switch self {
            case .bold: return "NotoSansKR-Bold"
            case .medium: return "NotoSansKR-Medium"
            case .regular: return "NotoSansKR-Regular"
            }
        }
    }
}
