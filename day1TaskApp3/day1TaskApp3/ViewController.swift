//
//  ViewController.swift
//  day1TaskApp3
//
//  Created by 梶原敬太 on 2019/06/03.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet var labelText: UILabel!
    
    @IBOutlet var leftText: UITextField!
    
    @IBOutlet var rightText: UITextField!
    
    
    @IBAction func tasu(_ sender: Any) {
        
        let leftStringText: String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let leftnum = Int(leftStringText!)
        let rightnum = Int(rightStringText!)
        
        let result = leftnum! + rightnum!
        
        labelText.text = String(result)
        
        
        
        
        
        
    }
    
    
    @IBAction func hiku(_ sender: Any) {
    }
    
    @IBAction func kesu(_ sender: Any) {
    }
    
    
    @IBAction func waru(_ sender: Any) {
    }
    
    @IBAction func kakeru(_ sender: Any) {
    }
    
    
    
    
    
    
    
    
    
}

