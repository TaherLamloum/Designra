//
//  PremiumVC.swift
//  Designra
//
//  Created by taher elnehr on 07/05/2024.
//

import UIKit

class PremiumVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet var views: [UIView]!
    @IBOutlet weak var goPremiumBtn: UIButton!
    @IBOutlet var packageView: [UIView]!
    @IBOutlet weak var packageMonthlyLbl: UILabel!
    @IBOutlet weak var mainMonthlyLbl: UILabel!
    @IBOutlet weak var packageYearlyLbl: UILabel!
    @IBOutlet weak var mainYearlyLbl: UILabel!
    @IBOutlet weak var stNoLbl: UILabel!
    @IBOutlet  var stMonthlyLbl: [UILabel]!
    @IBOutlet weak var ndNoLbl: UILabel!
    @IBOutlet weak var ndYearlyLbl: UILabel!
    @IBOutlet weak var stPerMonthLbl: UILabel!
    @IBOutlet weak var perYearLbl: UILabel!
    @IBOutlet weak var stPerYearLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    initUI()
        // Do any additional setup after loading the view.
    }

}
extension PremiumVC{
    func initUI(){
        for view in packageView{
            view.addRadius(radius: 5)
        }
        goPremiumBtn.addRadius(radius: 8)
        for view in views{
            view.addRadius(radius: 12)
        }
        goPremiumBtn.custom(font: .semiBold, size: .size_18, title: BTNs.GOPREMIUM)
        titleLbl.customLabel(size: .size_38, font: .regular, text: Lbls.UNLIMITED_ACCESS.title, direction: .Center)
        packageYearlyLbl.customLabel(size: .size_10, font: .regular, text: Lbls.YEARLY.title)
        packageMonthlyLbl.customLabel(size: .size_10, font: .regular, text: Lbls.MONTHLY.title)
        mainMonthlyLbl.customLabel(size: .size_24, font: .semiBold, text: "$ 11.99")
        mainYearlyLbl.customLabel(size: .size_24, font: .semiBold, text: "$ 4.99")
        for label in stMonthlyLbl{
            label.customLabel(size: .size_13, font: .regular, text: "per month")
        }
        ndYearlyLbl.customLabel(size: .size_13, font: .regular, text: "per year")
        stPerMonthLbl.customLabel(size: .size_13, font: .regular, text: "per year")
        stNoLbl.customLabel(size: .size_13, font: .regular, text: "$ 11.99")
        ndNoLbl.customLabel(size: .size_13, font: .regular, text: "$143.99")
        stPerYearLbl.customLabel(size: .size_13, font: .regular, text: "$ 4.99")
        perYearLbl.customLabel(size: .size_13, font: .regular, text: "$ 59.99")
    }
}
