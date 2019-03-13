//
//  LocalManager.swift
//  CWBFramworkForSwift
//
//  Created by 陈文斌 on 2019/3/13.
//  Copyright © 2019 陈文斌. All rights reserved.
//

import UIKit

class LocalManager: NSObject {

    var  version:String = "1.0.0";
    private var  uuid:String = "fffffff";
    override init() {
        
        print("初始化本地管理器")
        print(uuid);
        print(SYS_SCREEN_WIDTH);
        super.init();
    }
}
