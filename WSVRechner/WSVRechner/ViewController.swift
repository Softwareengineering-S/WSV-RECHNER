//
//  ViewController.swift
//  WSVRechner
//
//  Created by Monique Shaqiri on 06.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var einkaufsBetrag = 0.0
    var einkaufErsparnis = 0.0
    var einkaufGesamtkosten = 0.0
    var prozente = 0.0
@IBOutlet weak var einkaufBetragLabel: UITextField!
@IBOutlet weak var einkaufErsparnisLabel: UILabel!
@IBOutlet weak var einkaufGesamtkostenLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    @IBAction func prozentButtonpressed(_ sender: UIButton) {
        if sender.titleLabel?.text == "15%" {
            prozente = 15.0
            ausrechnenDesBetrags()
        }else if sender.titleLabel?.text == "20%" {
            prozente = 20.0
            ausrechnenDesBetrags()
        }else if sender.titleLabel?.text == "30%" {
            prozente = 30.0
            ausrechnenDesBetrags()
        }else if sender.titleLabel?.text == "50%" {
            prozente = 50.0
            ausrechnenDesBetrags()
        }
        
    }
    func printUIElements(){
        let ersparnisString = String(format: "%.2f", einkaufErsparnis)
        
        let gesamtKostenString = String(format: "%.2f", einkaufGesamtkosten )
        einkaufErsparnisLabel.text = "Ersparnis :" + ersparnisString + "€"
        einkaufGesamtkostenLabel.text = "GesamtKosten:" + gesamtKostenString + "€"
    }
    func ausrechnenDesBetrags(){
        if einkaufBetragLabel.text != "" {
            einkaufsBetrag = Double( einkaufBetragLabel.text!)!
            einkaufErsparnis = (einkaufsBetrag * prozente) / 100
            einkaufGesamtkosten = einkaufGesamtkosten - einkaufErsparnis
            printUIElements()
        }
    }
    
}

