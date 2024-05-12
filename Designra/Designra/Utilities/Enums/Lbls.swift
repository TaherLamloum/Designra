//
//  Lbls.swift
//  Designra
//
//  Created by taher elnehr on 04/05/2024.
//

import Foundation


enum Lbls: String{
    case INTRO_TITLE = "introTitleLbl"
    case INTRO_DETAILS = "introDetailsLbl"
    case START = "startLbl"
    case ACCOUNT = "accountLbl"
    case UNLIMITED_ACCESS = "titleLbl"
    case MONTHLY = "packageMonthlyLbl"
    case YEARLY = "packageYearlyLbl"
   
    
    var title: String {
        return self.rawValue.localized
    }
}
