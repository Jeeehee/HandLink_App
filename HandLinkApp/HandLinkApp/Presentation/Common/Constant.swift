//
//  Constant.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2023/02/03.
//

import Foundation

enum Constant: String {
    case appName
    case firstOnBoardingTitle
    case firstOnBoardingDescription
    case secondOnBoardingTitle
    case secondeOnBoardingDescription
    
    var text: String {
        switch self {
        case .appName: return "닿다"
        case .firstOnBoardingTitle: return "서로의 목소리가 닿다"
        case .firstOnBoardingDescription: return "닿다는 농인과의 소통을 위해 만들어졌습니다."
        case .secondOnBoardingTitle: return "화면에 나타나는 카메라에\n수어를 보여주세요"
        case .secondeOnBoardingDescription: return "실시간으로 해당 수어의 뜻을 번역해드립니다."
        }
    }
}
