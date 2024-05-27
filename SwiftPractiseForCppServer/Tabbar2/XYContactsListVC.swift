//
//  XYContactsListVC.swift
//  SwiftPractiseForCppServer
//
//  Created by Aventador on 2024/5/27.
//

import UIKit
import BaseViewModule

class XYContactsListVC: XYBaseViewController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "联系人"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
    
}
