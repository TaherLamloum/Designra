//
//  CategoriesCVCell.swift
//  Designra
//
//  Created by taher elnehr on 14/05/2024.
//

import UIKit

class CategoriesCVCell: UICollectionViewCell {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.addRadius(radius: 8)
        
    }
    func initCell(cellData: Category){
        titleLbl.text = cellData.name
        mainView.layer.backgroundColor = UIColor(named: (cellData.selected) ? "selCellBG" : "cellBG")?.cgColor
        titleLbl.textColor = UIColor(named: (cellData.selected) ? "selected" : "nosel")
    }
}
