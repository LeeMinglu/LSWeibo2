//
//  LSBaseController.swift
//  LSWeibo2
//
//  Created by 李明禄 on 2017/5/30.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

class LSBaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }

    
}

extension LSBaseController {
    func setupUI() {
        self.view.backgroundColor = UIColor.cz_random()
    }
}
