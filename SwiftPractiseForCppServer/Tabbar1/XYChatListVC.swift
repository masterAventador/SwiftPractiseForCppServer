//
//  XYChatListVC.swift
//  SwiftPractiseForCppServer
//
//  Created by Aventador on 2024/5/27.
//

import UIKit
import BaseViewModule
import HttpModule
import HttpPBModule


class XYChatListVC: XYBaseViewController {
    
    var tableView:UITableView!
    
    let cellID = "CellID"
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "聊天"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        tableView = UITableView(frame: UIScreen.main.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        
        let loginReq = Http_LoginReq.with {
            $0.account = "amigo"
            $0.pwdMd5 = "amigo"
        }
        XYHttpModule.post(loginReq, responseType: Http_LoginResp.self) { response in
            switch response {
            case .success(let value):
                print(value.token)
            case .failure(let error):
                print(error)
            }
        }
    }
}

extension XYChatListVC : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let XYChatVC = XYChatVC()
        navigationController?.pushViewController(XYChatVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
