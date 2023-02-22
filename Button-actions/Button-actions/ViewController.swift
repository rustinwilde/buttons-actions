//
//  ViewController.swift
//  Button-actions
//
//  Created by Rustin Wilde on 20.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ColorizeBtn: UIButton!
    
    @IBOutlet var wiggleBtn: UIButton!
    
    @IBOutlet var dimButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorizeBtnPressed(_ sender: Any) {
        ColorizeBtn.colorize()
    }
    
    @IBAction func wiggleBtnPressed(_ sender: Any) {
        wiggleBtn.layer.cornerRadius = 10.0
        wiggleBtn.wiggle()
    }
    
    @IBAction func dimBtnPressed(_ sender: Any) {
        dimButton.dim()
    }
}

