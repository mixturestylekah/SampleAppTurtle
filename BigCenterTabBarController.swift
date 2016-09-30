//
//  BigCenterTabBarController.swift
//  SampleTab
//
//  Created by hf on 2016/03/25.
//  Copyright © 2016年 swift-studing.com. All rights reserved.
//

import UIKit

class BigCenterTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //タブの真ん中にボタンを配置
        setupBigCenterButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // タブ真ん中のボタン作成
    fileprivate func setupBigCenterButton() {
        
        let button = UIButton(type: .custom)
        button.setBackgroundImage(UIImage(named: "center_button@2x.png") , for: UIControlState())   // TODO:画像の用意
        button.sizeToFit()
        button.center = CGPoint(x: tabBar.bounds.size.width / 2, y: tabBar.bounds.size.height - (button.bounds.size.height/2))
        button.addTarget(self, action: #selector(BigCenterTabBarController.tapBigCenter(_:)), for: .touchUpInside)
        tabBar.addSubview(button)
    }
    
    // タブ真ん中を選択する
    func tapBigCenter(_ sender:AnyObject){
        selectedIndex = 2;
    }
}
