//
//  XYBaseTabbarController.swift
//  SwiftPractiseForCppServer
//
//  Created by Aventador on 2024/5/27.
//

import UIKit

class XYBaseTabbarController : UITabBarController {
    override func viewDidLoad() {
        initControllers()
    }
    
    func initControllers() {
        
        var controllerArray:[UIViewController] = [];
        
        let tab1 = XYBaseNavigationController(rootViewController: XYChatListVC())
        let tab2 = XYBaseNavigationController(rootViewController: XYContactsListVC())
        
        controllerArray.append(tab1)
        controllerArray.append(tab2)
        
        self.viewControllers = controllerArray
    }
}
