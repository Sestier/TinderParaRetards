//
//  ViewController.swift
//  transiciones2
//
//  Created by Maestro on 29/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vwContenedor: UIView!
    @IBOutlet weak var btnSi: UIButton!
    @IBOutlet weak var btnNo: UIButton!
    
    
    @IBAction func doValueChangeSwitch(_ sender: Any) {
        UIView.transition(with: vwContenedor, duration: 0.75, options: [.transitionFlipFromRight], animations: {
        }, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        btnSi.layer.cornerRadius  = 40
        btnNo.layer.cornerRadius  = 40
        
    }
    
    @IBAction func btnSiAction(_ sender: Any) {
        
    }
    
    @IBAction func btnNoAction(_ sender: Any) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
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

