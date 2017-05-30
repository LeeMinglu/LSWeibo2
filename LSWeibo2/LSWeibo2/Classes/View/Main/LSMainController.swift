//
//  LSMainController.swift
//  LSWeibo2
//
//  Created by 李明禄 on 2017/5/30.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

class LSMainController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //添加子控制器
        setupControllers()
        
    }
}

extension LSMainController {
    

    /// 设置Main控制器的子控制器
    fileprivate func setupControllers() {
        
        let controllersDictArray = [
            ["clsName": "LSHomeController", "title" : "首页", "imageName": "home"],
            ["clsName": "LSDiscoverController", "title" : "发现", "imageName": "discover"],
            ["clsName": ""],
            ["clsName": "LSMessageController", "title" : "消息", "imageName": "message_center"],
            ["clsName": "LSProfileController", "title" : "我", "imageName": "profile"]
        ]
        //这里的类型必须是UIViewController
        var controllers = [UIViewController]()
        
        for dict in controllersDictArray {
            let vc = controller(dict: dict)
            controllers.append(vc)
        }
        //如果不添加此代码 main控制器中不显示
        viewControllers = controllers
    }
    
    fileprivate func controller(dict: [String: String]) -> UIViewController {
        guard let clsname = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageName"],
            let clsVC = NSClassFromString(Bundle.main.namespace + "." + clsname) as? UIViewController.Type else {
            return UIViewController()
        }
        
        let vc = clsVC.init()
        vc.title = title
        vc.tabBarItem.image = UIImage(named: "tabbar_" + imageName)
        vc.tabBarItem.selectedImage = UIImage(named: "tabbar_" + imageName + "_highlighted")?.withRenderingMode(.alwaysOriginal)
        let nav = LSNavigationController(rootViewController: vc)
        
        return nav
    }
}
