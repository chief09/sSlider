//
//  ViewController.swift
//  SSlider
//
//  Created by Cyberjaya 17 iTrain on 11/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sLabel: UILabel!
    @IBOutlet var sText: UITextField!
    @IBOutlet var sSlider: UISlider!
    @IBOutlet var onOff: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sSlider.minimumValue = 0
        sSlider.maximumValue = 100
        sSlider.setValue(0, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderAction(_ sender: Any) {
        if onOff.isOn {
            sLabel.isHidden = false
            sText.isHidden = false
            sSlider.isHidden = false
        }
        else {
            sLabel.isHidden = true
            sText.isHidden = true
            sSlider.isHidden = true
        }
    }

    @IBAction func sliderValueAction(_ sender: Any) {
        
        sText.text = String(format: "%.1f", self.sSlider.value)
    }
}

