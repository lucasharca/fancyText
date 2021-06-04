//
//  ViewController.swift
//  FancyTextCreator
//
//  Created by radix on 04/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shadowButton: UIButton!
    
    var fontSize: CGFloat = 40
    var state: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func enterText(_ sender: Any) {
        label.text = textField.text
    }
    
    @IBAction func red(_ sender: Any) {
        label.textColor = UIColor.red
    }
    
    @IBAction func blue(_ sender: Any) {
        label.textColor = UIColor.blue
    }
    
    @IBAction func green(_ sender: Any) {
        label.textColor = UIColor(red: 51.0/255.0, green: 255.0/255.0, blue: 88.0/255.0, alpha: 1)
    }
    
    @IBAction func font1(_ sender: Any) {
        label.font = UIFont(name: "Blacksword", size: fontSize)
    }
    
    @IBAction func font2(_ sender: Any) {
        label.font = UIFont(name: "LemonMilk", size: fontSize)
    }
    
    @IBAction func font3(_ sender: Any) {
        label.font = UIFont(name: "Moon Flower", size: fontSize)
    }
    
    @IBAction func font4(_ sender: Any) {
        label.font = UIFont(name: "SugarstyleMillenial-Regular", size: fontSize)
    }
    
    @IBAction func shadow(_ sender: Any) {
        if state == false {
            state = true
            label.layer.shadowColor =  UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width: 2, height: 2)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.25
            
            shadowButton.setTitle("Remove Shadow", for: UIControl.State.normal)
        } else {
            state = false
            label.layer.shadowOpacity = 0
            shadowButton.setTitle("Add Shadow", for: UIControl.State.normal)
            
        }
    }
    
    @IBAction func small(_ sender: Any) {
        fontSize = 40
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func medium(_ sender: Any) {
        fontSize = 60
        label.font = label.font.withSize(fontSize)
    }
    
    @IBAction func large(_ sender: Any) {
        fontSize = 80
        label.font = label.font.withSize(fontSize)
    }
    
}

