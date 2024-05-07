//
//  AppDelegate.swift
//  Designra
//
//  Created by taher elnehr on 01/05/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        initApp()
        return true
    }

}
extension AppDelegate{
    func initApp(){
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = IntroVC()
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
    }
}
