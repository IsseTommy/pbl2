//
//  ViewController.swift
//  pbl1
//
//  Created by 冨田悠斗 on 2018/09/26.
//  Copyright © 2018 tommy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl"){
                
            }
        }
    }
    // comment by htakada
    //This is Tommy
    //im joon!!

}

