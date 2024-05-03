//
//  TxtFields.swift
//  Designra
//
//  Created by taher elnehr on 04/05/2024.
//

import UIKit
//MARK: - TxtFields Enum

enum TxtFields: String, CaseIterable {
    
    case NONE = ""
    case EMAIL = "emailTF"
    case NAME = "nameTF"
    case FULL_NAME = "fullNameLbl"
    case FIRST_NAME = "firstNameLab"
    
    case RE_PASSWORD = "rePasswordTF"
    //
    case MOBILE_NUMBER = "mobileNumberTxtField"
    case PASSWORD = "passwordTxtField"
    case SALON_NAME = "salonNameTxtField"
    case CITY_NAME = "cityNameTxtField"
    case SALON_ADDRESS = "salonAddressTxtField"
    
}
