//
//  Extension+UIButton .swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/01.
//

import UIKit

extension UIButton {
    static func customConfiguration(_ title: String, _ font: String, _ size: CGFloat) -> Configuration {
        var config = UIButton.Configuration.plain()
        var attribute = AttributedString.init(title)
        attribute.font = .init(name: font, size: size)
        config.attributedTitle = attribute
        
        return config
    }
}
