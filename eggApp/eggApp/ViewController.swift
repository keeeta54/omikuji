//
//  ViewController.swift
//  eggApp
//
//  Created by 梶原敬太 on 2019/06/02.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = String(count)
        countLabel.text = "  "
    }
    var count: Int = 100
    
    
    
//    数のラベル
    @IBOutlet var countLabel: UILabel!
    
//    テキストのラベル
    @IBOutlet var textLabel: UILabel!
    
    
    
    @IBAction func eggButton(_ sender: UIButton) {
        
        count -= 1
        countLabel.text = String(count)
        
        if (count == 50){
            textLabel.text = "まだまだ"
        } else if(count == 25){
            textLabel.text = "そろそろ"
        } else if(count == 0){
            textLabel.text = "おつかれさま"
            countLabel.text = "おわり"
        }
        
        
    }
    
    
    
}

