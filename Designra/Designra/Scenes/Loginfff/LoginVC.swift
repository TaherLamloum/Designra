//
//  LoginVC.swift
//  Designra
//
//  Created by taher elnehr on 07/05/2024.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var startLbl: UILabel!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var signinBtn: UIButton!
    @IBOutlet weak var accountLbl: UILabel!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var seeBtn: UIButton!
    
    var see = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
      initUI()
    }

    @IBAction func seeBtnClicked(_ sender: Any) {
        see.toggle()
        seeBtn.setImage(UIImage(named: see ? "see" : "unSee"), for: .normal)
        passwordTxtField.isSecureTextEntry = !see
    }
}
extension LoginVC{
    func initUI(){
        emailTxtField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "C2C2B47")!])

        passwordTxtField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor(named: "C2C2B47")!])
        signupBtn.custom(font: .semiBold, title: BTNs.SIGNUP)
        accountLbl.customLabel(size: .size_15, font: .regular, text: Lbls.ACCOUNT.title)
        startLbl.customLabel(size: .size_38, font: .regular, text: Lbls.START.title)
        emailView.addRadius(radius: 8)
        passwordView.addRadius(radius: 8)
        signinBtn.addRadius(radius: 8)
//        emailTxtField.customTxtField(color: .C2C2B47, size: .size_14, font: .bold, placeholder: .EMAIL)
//        passwordTxtField.customTxtField(color: .C2C2B47, size: .size_14, font: .bold, placeholder: .PASSWORD)
        signinBtn.custom(font: .bold, size: .size_18, title: .SIGNIN)
    }
}
