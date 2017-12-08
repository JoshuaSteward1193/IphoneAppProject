//
//  RuleDetailsViewController.swift
//  RiskCompanionApp
//
//  Created by CIS Student on 12/4/17.
//  Copyright © 2017 Joshua Steward. All rights reserved.
//

import UIKit

class RuleDetailsViewController: UIViewController {

    var rulesText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        rulesDetailsLabel.text = rulesText
    }
    
    @IBOutlet weak var rulesDetailsLabel: UILabel!
    
    

}
