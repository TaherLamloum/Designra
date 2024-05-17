//
//  HomeVC.swift
//  Designra
//
//  Created by taher elnehr on 14/05/2024.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTxtField: UITextField!
    @IBOutlet weak var postsTV: UITableView!
    @IBOutlet weak var categoriesCV: UICollectionView!   
    
    var productList = ["01", "02", "03"]
    var categoriesList = [Category(name: "All courses", selected: true), Category(name: "Identity", selected: false), Category(name: "UI/UX", selected: false), Category(name: "Branding", selected: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
        categoriesCV.dataSource = self
        categoriesCV.delegate = self
        categoriesCV.registerCVNib(cell: CategoriesCVCell.self)
        
        postsTV.dataSource = self
        postsTV.delegate = self
        postsTV.registerNib(cellClass: PostsTVCell.self)
    }

}
extension HomeVC{
    func initUI(){
        searchView.addRadius(radius: 11)
        searchTxtField.customTxtField(size: .size_14, font: .regular, placeholder: .SEARCH, text: "", isPassword: false, isCenter: false)
    }
}
extension HomeVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 205*iPhoneXFactor
    }
}
extension HomeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue() as PostsTVCell
        cell.postImg.image = UIImage(named: productList[indexPath.row])
        return cell
    }
}
extension HomeVC: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        for index in 0..<categoriesList.count{
            categoriesList[index].selected = false
        }
        categoriesList[indexPath.row].selected = true
        categoriesCV.reloadData()
    }
}
extension HomeVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueCV(index: indexPath) as CategoriesCVCell
        cell.initCell(cellData: categoriesList[indexPath.item])
        
        return cell
    }
}
extension HomeVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let hight = collectionView.bounds.height
        let width = calculateCellWidth(cellData: categoriesList[indexPath.item])
        return CGSize(width: width, height: hight)
    }
    private func calculateCellWidth(cellData: Category) -> CGFloat{
        let cell = Bundle.main.loadNibNamed("CategoriesCVCell", owner: self)?.first as! CategoriesCVCell
        cell.initCell(cellData: cellData)
        let fittingSize = CGSize(width: UIView.layoutFittingCompressedSize.width, height: cell.bounds.height)
        let size = cell.contentView.systemLayoutSizeFitting(fittingSize)
        return size.width
     }
}
