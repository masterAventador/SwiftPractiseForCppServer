//
//  AppDelegate.swift
//  SwiftPractiseForCppServer
//
//  Created by Aventador on 2024/5/27.
//

import UIKit
import BaseViewModule

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let tabbarController = XYBaseTabbarController()
        
        let controllers = [
            XYBaseNavigationController(rootViewController: XYChatListVC()),
            XYBaseNavigationController(rootViewController: XYContactsListVC())
        ];
        tabbarController.viewControllers = controllers
        window?.rootViewController = tabbarController
        window?.makeKeyAndVisible()
        return true
    }


}

