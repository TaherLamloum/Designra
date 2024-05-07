//
//  IntroVC.swift
//  Designra
//
//  Created by taher elnehr on 01/05/2024.
//

import UIKit

class IntroVC: UIViewController {

    @IBOutlet weak var introTitleLbl: UILabel!
    @IBOutlet weak var introDetailslbl: UILabel!
    @IBOutlet weak var startNowBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 initUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func startNowBtnClicked(_ sender: Any) {
        let vc = LoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension IntroVC{
  func  initUI(){
      introTitleLbl.customLabel(size: .size_39, font: .regular, text: Lbls.INTRO_TITLE.title, direction: .Center)
      introDetailslbl.customLabel(size: .size_17, font: .regular, text: Lbls.INTRO_DETAILS.title, direction: .Center)
      startNowBtn.addRadius(radius: 8)
      startNowBtn.custom(title: .START_NOW)
      
    }
}
