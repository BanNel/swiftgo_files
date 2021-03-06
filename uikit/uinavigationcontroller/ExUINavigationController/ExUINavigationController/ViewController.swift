//
//  ViewController.swift
//  ExUINavigationController
//
//  Created by joe feng on 2016/5/24.
//  Copyright © 2016年 hsin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        // 如果導覽列底色在切換頁面後會改變
        // 可將設置底色放在這個方法裡
        self.navigationController?.navigationBar.barTintColor = UIColor.lightGrayColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 底色
        self.view.backgroundColor = UIColor.darkGrayColor()
        
        // 導覽列標題
        self.title = "首頁"
        
        // 導覽列底色
        self.navigationController?.navigationBar.barTintColor = UIColor.lightGrayColor()
        
        // 導覽列是否半透明
        self.navigationController?.navigationBar.translucent = false
        
        // 導覽列左邊按鈕
        let leftButton = UIBarButtonItem(image: UIImage(named:"check"), style:.Plain , target:self , action: #selector(ViewController.check))
        // 加到導覽列中
        self.navigationItem.leftBarButtonItem = leftButton
        
        // 導覽列右邊按鈕
        let rightButton = UIBarButtonItem(title:"設定",style:.Plain ,target:self,action:#selector(ViewController.setting))
        // 加到導覽列中
        self.navigationItem.rightBarButtonItem = rightButton
        
        // 建立一個按鈕
        let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
        myButton.setTitle("Article", forState: .Normal)
        myButton.backgroundColor = UIColor.blueColor()
        myButton.addTarget(self, action: #selector(ViewController.article), forControlEvents: .TouchUpInside)
        self.view.addSubview(myButton)

    }
    
    func article() {
        self.navigationController?.pushViewController(ArticleViewController(), animated: true)
    }
    
    func check() {
        print("check button action")
    }
    
    func setting() {
        self.navigationController?.pushViewController(SettingViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

