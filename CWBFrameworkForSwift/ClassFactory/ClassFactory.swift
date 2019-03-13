//
//  ClassFactory.swift
//  CWBFramworkForSwift
//
//  Created by 陈文斌 on 2019/3/13.
//  Copyright © 2019 陈文斌. All rights reserved.
//

import UIKit

class ClassFactory: NSObject {
    
    static let shareInstance:ClassFactory = {
        
        let instance = ClassFactory();
        return instance;
    }();
    
    var  localManager:LocalManager!
    
    var  netManager:NetManager = {
        
        var manager = NetManager();
        return manager;
    }();
    
    
    override init() {
        super.init();
        localManager = LocalManager();
        localManager.version = "4.0.0";
    }
    
    

}
