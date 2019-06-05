//
//  ViewController.swift
//  tamago
//
//  Created by 梶原敬太 on 2019/06/02.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coutLavel.text = String(count)
    }

    
    
    @IBOutlet var coutLavel: UILabel!
    @IBOutlet var textLavel: UILabel!
    
    var count: Int = 100
    
    @IBAction func button(_ sender: Any) {
        
        count -= 1
        coutLavel.text = String(count)
        
        if (count == 50){
            textLavel.text = "まだまだ"
        } else if(count == 25){
            textLavel.text = "そろそろ"
        } else if(count == 0){
           textLavel.text = "おつかれさま"
        }
    }
    
    
    
    
    
}

