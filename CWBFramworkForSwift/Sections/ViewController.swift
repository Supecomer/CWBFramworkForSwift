//
//  ViewController.swift
//  CWBFramworkForSwift
//
//  Created by 陈文斌 on 2019/3/13.
//  Copyright © 2019 陈文斌. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var  lb_title:UILabel = {
        
        let  lb = UILabel.init();
        let  rect:CGRect = CGRect(x: 100, y: 100, width: 100, height: 100);
        lb.frame = rect;
        lb.text = "苹果";
        lb.textColor = UIColor.white;
        lb.textAlignment = NSTextAlignment.center;
        lb.backgroundColor = UIColor.red;
        return lb;
    }();
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.view.addSubview(lb_title);
        
        let button:UIButton = UIButton.init(frame: CGRect(x: 300, y: 100, width: 100, height: 100))
        button.backgroundColor = UIColor.blue;
        button.setTitle("栗子", for : UIControl.State.normal);
        button.addTarget(self, action:#selector(actionForBt(_:)), for: UIControl.Event.touchUpInside);
        self.view.addSubview(button);
    }
    
    @objc func  actionForBt(_ sender:UIButton)
    {
        print("我是栗子");
        let center:CGPoint = sender.center;
        UIView.animate(withDuration: 0.3, animations: {
            sender.center = CGPoint(x: 200, y: 200)
        }) { (Bool) in
            
            sender.center = center;
        }
    }
    @IBAction func actionForXibBt(_ sender:UIButton)
    {
        print("我是xib按钮")
    }

}

