//
//  XYBaseViewController.swift
//  SwiftPractiseForCppServer
//
//  Created by Aventador on 2024/5/27.
//

import UIKit

open class XYBaseViewController : UIViewController {
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    convenience public init() {
        self.init(nibName: nil, bundle: nil)
    }
}
