//
//  ViewController.swift
//  ThumbGen
//
//  Created by michaelCfrick on 06/27/2018.
//  Copyright (c) 2018 michaelCfrick. All rights reserved.
//

import UIKit
import ThumbGen

class ViewController: UIViewController {

    let thumbGen = ThumbGenerator()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        
        var result:UIImage?
        
        let outputSize = CGSize(width: 100, height: 150)
        
        let resourse = Bundle.main.path(forResource: "test", ofType: "png")
        let fileURL = NSURL(fileURLWithPath: resourse!)
        
        result = thumbGen.thumbnailFrom(path: fileURL, outputSize: outputSize)
        
        if result != nil {
            let iv = UIImageView(frame: CGRect(x: 10, y: 100, width: outputSize.width, height: outputSize.height))
            iv.image = result
            self.view.addSubview(iv)
        }
    }
}

