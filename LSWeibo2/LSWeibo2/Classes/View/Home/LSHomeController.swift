//
//  LSHomeController.swift
//  LSWeibo2
//
//  Created by 李明禄 on 2017/5/30.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

class LSHomeController: LSBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
           }
    @objc func addFriend() {
        print("点击了添加好友")
        let friendVC = LSDemoViewController()
        navigationController?.pushViewController(friendVC, animated: true)
    }

}

extension LSHomeController {
    override func setupUI() {
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "好友", fontSize: 17, target: self, action: #selector(addFriend), isBack: false)
        
//        let barButton: UIButton = UIButton.cz_textButton("好友", fontSize: 16, normalColor: UIColor.blue, highlightedColor: UIColor.orange)
//        
//        barButton.addTarget(self, action: #selector(addFriend), for: .touchUpInside)
//        
//        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: barButton)
    }
}
