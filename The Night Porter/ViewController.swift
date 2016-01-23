//
//  ViewController.swift
//  The Night Porter
//
//  Created by Jeremy Frick on 1/21/16.
//  Copyright © 2016 Red Anchor Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeBackground(sender: AnyObject) {
        view.backgroundColor = UIColor.grayColor()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

