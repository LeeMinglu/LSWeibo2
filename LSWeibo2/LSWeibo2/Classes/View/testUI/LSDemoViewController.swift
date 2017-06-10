//
//  LSDemoViewController.swift
//  LSWeibo2
//
//  Created by 李明禄 on 2017/5/31.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

class LSDemoViewController: LSBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "下一个", fontSize: 16, target: self, action: #selector(nextVC), isBack: false)
    }
    
    @objc private func nextVC() {
        let vc = LSDemoViewController()
        navigationController?.pushViewController(vc, animated: true)
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
