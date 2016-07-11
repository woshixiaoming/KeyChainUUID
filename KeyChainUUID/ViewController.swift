//
//  ViewController.swift
//  KeyChainUUID
//
//  Created by zlm on 16/7/6.
//  Copyright © 2016年 zlm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("\(KeyChainUUID.getUUID())")
        
        var alert:UIAlertView = UIAlertView(title: "UUID", message: KeyChainUUID.getUUID(), delegate: self, cancelButtonTitle: nil)
        alert.show()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

