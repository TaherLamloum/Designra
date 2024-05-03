//
//  UIView+Extension.swift
//  Designra
//
//  Created by taher elnehr on 04/05/2024.
//

import UIKit



extension UIView{
    
    func addRadius(radius: CGFloat){
        self.layer.cornerRadius = radius
    }
    func addBorder(color: Colors, width: CGFloat){
        self.layer.borderColor = UIColor(named: color.rawValue)?.cgColor
        self.layer.borderWidth = width
    }
}
