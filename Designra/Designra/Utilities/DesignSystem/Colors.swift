//
//  Colors.swift
//  Designra
//
//  Created by taher elnehr on 04/05/2024.
//


import UIKit

enum Colors: String {
    case CFFFFFF = "#FFFFFF"
    case CF59DD3 = "#F59DD3"
    case C1F293A = "#1F293A"
    case C2C2B47 = "#2C2B47"
    case CB9B8C6 = "#B9B8C6"
    case CFFF1EF = "#FFF1EF"
    // Add the rest of your colors here
    
    var hex: UIColor {
        return UIColor(hexString: self.rawValue)
    }
    var cgColor: CGColor {
        return UIColor(hexString: self.rawValue).cgColor
    }
    
    func darkened(by percentage: CGFloat) -> UIColor {
        return self.hex.darkened(by: percentage)
    }
    
    func lightened(by percentage: CGFloat) -> UIColor {
        return self.hex.lightened(by: percentage)
    }
}

extension UIColor {
    func darkened(by percentage: CGFloat) -> UIColor {
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation, brightness: max(brightness - percentage, 0.0), alpha: alpha)
    }

    func lightened(by percentage: CGFloat) -> UIColor {
        var hue: CGFloat = 0, saturation: CGFloat = 0, brightness: CGFloat = 0, alpha: CGFloat = 0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation, brightness: min(brightness + percentage, 1.0), alpha: alpha)
    }
}

// Example usage:
let originalColor = Colors.CFFFFFF
let darkVariant = originalColor.darkened(by: 0.2) // Darken by 20%
let lightVariant = originalColor.lightened(by: 0.2) // Lighten by 20%
