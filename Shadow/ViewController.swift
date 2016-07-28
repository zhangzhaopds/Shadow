//
//  ViewController.swift
//  Shadow
//
//  Created by 张昭 on 16/7/28.
//  Copyright © 2016年 张昭. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageShadow = UIImageView.init(frame: CGRectMake(50, 50, UIScreen.mainScreen().bounds.width - 100, UIScreen.mainScreen().bounds.width - 100))
        self.view.addSubview(imageShadow)
        imageShadow.image = UIImage(named: "IMG_0412.JPG")
        imageShadow.layer.shadowColor = UIColor.init(red: 238/225.0, green: 100/255.0, blue: 81/255.0, alpha: 1).CGColor
        imageShadow.layer.shadowOffset = CGSizeMake(0, 3.0)
        imageShadow.layer.shadowOpacity = 0.2   // 透明度
        imageShadow.layer.shadowRadius = 6.0    // 半径
        
        /**
         注意点： 控件的圆角属性，会影响控件的投影的实现。例如：加入下面的设置圆角属性的代码，将看不到控件的投影效果。
         */
        imageShadow.layer.cornerRadius = 5
        imageShadow.layer.masksToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

