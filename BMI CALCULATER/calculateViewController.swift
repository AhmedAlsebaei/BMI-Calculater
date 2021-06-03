//
//  ViewController.swift
//  BMI CALCULATER
//
//  Created by ahmed aelsebaay on 02/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightlabel: UILabel!
    
    @IBOutlet weak var weightlabel: UILabel!
    
    @IBOutlet weak var heightslider: UISlider!
    
    
    @IBOutlet weak var weightslider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    
    
    
    @IBAction func heightsliderchanged(_ sender: UISlider) {
       let height =  String (format: "%.2f", sender.value)
        heightlabel.text = "\(height)M"
    
    }
    
    @IBAction func weightsliderchanged(_ sender: UISlider) {
        
        let weight =  String (format: "%.2f", sender.value)
        weightlabel.text = "\(weight)Km"

    }
    @IBAction func calculatebutton(_ sender: Any) {
        let height =  heightslider.value
        let weight =  weightslider.value

        let bmi = weight  / (height * height)
        
    print(bmi)
        
        
        let secondevc = SecondViewController()
    }
    
}

