//
//  ViewController.swift
//  The Night Porter
//
//  Created by Adam Garrett-Harris on 7/9/19.
//  Copyright © 2019 Adam Garrett-Harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = UIColor.darkGray
        
        let everything = view.subviews
        
        for eachView in everything {
            if eachView is UILabel {
                let currentLabel = eachView as! UILabel
                currentLabel.textColor = UIColor.white
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

