//
//  CollectionView+Extension.swift
//  Designra
//
//  Created by taher elnehr on 17/05/2024.
//


import UIKit
extension UICollectionView {
    func registerCVNib<Cell: UICollectionViewCell>(cell: Cell.Type) {
        let nibName = String(describing: Cell.self)
        self.register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: nibName)
    }
    func dequeueCV<Cell: UICollectionViewCell>(index: IndexPath) -> Cell {
        let identifier = String(describing: Cell.self)
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: identifier, for: index) as? Cell else {
            fatalError("Error in cell")
        }
        return cell
    }
}
