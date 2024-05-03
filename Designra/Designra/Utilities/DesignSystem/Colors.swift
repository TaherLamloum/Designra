//
//  Colors.swift
//  Designra
//
//  Created by taher elnehr on 04/05/2024.
//

import UIKit

enum Colors: String{
    case CFFFFFF = "#FFFFFF"
    case CF59DD3 = "#F59DD3"
    case C1F293A = "#1F293A"
    case C000000 = "#000000"
    case CF3F3F3 = "#F3F3F3"
    case CA3ADBE = "#A3ADBE"
    var hex: UIColor {
        return UIColor(hexString: self.rawValue)
    }
    var cgColor: CGColor {
        return UIColor(hexString: self.rawValue).cgColor
    }
}
