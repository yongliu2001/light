//
//  ViewController.swift
//  Light
//
//  Created by yong liu on 8/7/17.
//  Copyright © 2017 yong liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: AnyObject) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = UIColor.white
            lightButton.setTitle("Off", for: UIControlState.normal)
        } else {
            view.backgroundColor = UIColor.black
            lightButton.setTitle("On", for: UIControlState.normal)
        }
    }

}

