//
//  LSNavigationController.swift
//  LSWeibo2
//
//  Created by 李明禄 on 2017/5/30.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

class LSNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 0 {

            //设置tabar为隐藏
            viewController.hidesBottomBarWhenPushed = true
            
            if let vc = (viewController as? LSDemoViewController) {
                
                var title = "返回"
                
                if childViewControllers.count == 1 {
                    title = childViewControllers.first?.title ?? title
                }
                vc.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: title, fontSize: 16, target: self, action: #selector(backVC), isBack: true)
            }
        }
            
        super.pushViewController(viewController, animated: true)
    }
    
    @objc private func backVC() {
        popViewController(animated: true)
    }
    
}


