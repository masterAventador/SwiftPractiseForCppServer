//
//  AppDelegate.swift
//  SwiftPractiseForCppServer
//
//  Created by Aventador on 2024/5/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabbarController = XYBaseTabbarController()
        window?.rootViewController = tabbarController
        window?.makeKeyAndVisible()
        return true
    }


}

