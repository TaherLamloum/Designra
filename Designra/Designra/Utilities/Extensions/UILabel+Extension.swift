//
//  UILabel+Extension.swift
//  Designra
//
//  Created by taher elnehr on 04/05/2024.
//

import UIKit

extension UILabel {
        
    func customLabel(size: Size, font: Fonts, text: String = "", direction: Direction = .Normal, nOlines: Int = 1) {
        let size = iPhoneXFactor*(CGFloat(size.rawValue))
        switch direction {
        case .Left: self.textAlignment = ((isEnglish()) ? .left : .left)
        case .Right: self.textAlignment = ((isEnglish()) ? .right : .right)
        case .Normal: self.textAlignment = ((isEnglish()) ? .left : .right)
        case .Center: self.textAlignment = .center
            
        }
        self.font = UIFont(name: font.rawValue.localized, size: size)
        self.text = text
    }
}
