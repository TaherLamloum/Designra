//
//  MainTabBar.swift
//  Designra
//
//  Created by taher elnehr on 14/05/2024.
//

import UIKit

class MainTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
     addTabBar()
    }
    func addTabBar(){
        let home = HomeVC()
        home.tabBarItem = tabBarItem(title: "", selImg: "homeSel", unSelImg: "homeUnSel")
        let favourite = FavouriteVC()
        favourite.tabBarItem = tabBarItem(title: "", selImg: "favouriteSel", unSelImg: "favouriteUnSel")
        let settings = SettingsVC()
        settings.tabBarItem = tabBarItem(title: "", selImg: "SettingSel", unSelImg: "SettingUn")
        viewControllers = [home, favourite, settings]
    }
    func tabBarItem(title: String, selImg: String, unSelImg: String)-> UITabBarItem{
        let icon = UITabBarItem(title: title, image: UIImage(named: unSelImg), selectedImage: UIImage(named: selImg))
        return icon
    }
}
