//
//  ViewController.swift
//  day1taskApp2
//
//  Created by 梶原敬太 on 2019/06/01.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBOutlet var lavel: UILabel!
    
    
    
    @IBOutlet var leftText: UITextField!
    

    @IBOutlet var rightText: UITextField!
    
    
    
//    足し算
    @IBAction func tasu(_ sender: Any) {
        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let leftNum = Int(leftStringText!)
        let rightNum = Int(rightStringText!)
        
        let result = leftNum! + rightNum!
        let lavelText = String(result)
        lavel.text = lavelText
    }
    
    
//引き算
    @IBAction func hiku(_ sender: Any) {
        
        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let leftNum = Int(leftStringText!)
        let rightNum = Int(rightStringText!)
        
        let result = leftNum! - rightNum!
        let lavelText = String(result)
        lavel.text = lavelText
    }
    
    
    
//   全部消す
    @IBAction func kesu(_ sender: Any) {
        lavel.text = ""
        leftText.text = ""
        rightText.text = ""
    }
    
//    割り算
    @IBAction func waru(_ sender: Any) {
    
        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let leftNum = Int(leftStringText!)
        let rightNum = Int(rightStringText!)
        
        let result = leftNum! / rightNum!
        let lavelText = String(result)
        lavel.text = lavelText
    
    }
    
    
//    掛け算
    @IBAction func kakeru(_ sender: Any) {
        
        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let leftNum = Int(leftStringText!)
        let rightNum = Int(rightStringText!)
        
        let result = leftNum! * rightNum!
        let lavelText = String(result)
        lavel.text = lavelText
    }
    
    
    
}

