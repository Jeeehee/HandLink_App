//
//  Extension+String.swift
//  HandLinkApp
//
//  Created by Jihee hwang on 2022/12/04.
//

import UIKit

extension String {
    static func changePartialColorInText(_ text: String) -> NSAttributedString? {
        guard !text.isEmpty else { return nil }
        
        let attributeString = NSMutableAttributedString(string: text)
        attributeString.addAttribute(.foregroundColor, value: UIColor.primary, range: (text as NSString).range(of: "닿다"))
        
        return attributeString
    }
}
