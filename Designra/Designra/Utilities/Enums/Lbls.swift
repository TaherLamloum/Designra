//
//  Lbls.swift
//  Designra
//
//  Created by taher elnehr on 04/05/2024.
//

import Foundation


enum Lbls: String{
    case LOGIN_NOW = "loginNowLbl"
    case SALON = "salonLbl"
    case ASSISTANT = "assistantLbl"
    case MOBILE_NUMBER = "mobileNumberLbl"
    case PASSWORD = "passwordLbl"
    case NEW_SALON = "newSalonLbl"
    case SALON_NAME = "salonNameLbl"
    case CITY_NAME = "cityNameLbl"
    case SALON_ADDRESS = "salonAddressLbl"
    case LANGUAGE = "languageLbl"
    case TERMA_AND_CONDITIONS = "termsAndConditionsLbl"
    
    var title: String {
        return self.rawValue.localized
    }
}
