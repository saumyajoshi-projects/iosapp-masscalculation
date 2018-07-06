//
//  ViewController.swift
//  masscalculation
//
//  Created by Saumya Joshi on 2/6/18.
//  Copyright © 2018 Saumya Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // UI data fields
    @IBOutlet weak var MolarityValue: UITextField!
    @IBOutlet weak var VolumeValue: UITextField!
    @IBOutlet weak var MolecularMassValue: UITextField!
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // Action when Calculate button is pressed in main screen.
    @IBAction func EnterPressed(_ sender: Any) {
        let nf = NumberFormatter()
    // Handling , as decimal operator.
        nf.decimalSeparator = ","
        let MolarityVal = nf.number(from: MolarityValue.text!)
        let VolumeVal = nf.number(from: VolumeValue.text!)
        let MolecularMassVal = nf.number(from: MolecularMassValue.text!)
        
        let a = (MolarityVal?.floatValue)!
        let b = (VolumeVal?.floatValue)!
        let c = (MolecularMassVal?.floatValue)!
        
        result.text = String(a * b * c)

        
    }
     // Action when Clear button is pressed in main screen.
    @IBAction func ClearPressed(_ sender: Any) {
        MolarityValue.text = ""
        VolumeValue.text = ""
        MolecularMassValue.text = ""
        result.text = ""
        
    }
    
}



