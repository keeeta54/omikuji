//
//  ViewController.swift
//  eggApp3
//
//  Created by 梶原敬太 on 2019/06/02.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countText!.text = String(count)
    // labelTextにはじめは何も表示しない
        labelText.text = ""
    }

    var count: Int = 10
    
    
    let tamago1:UIImage = UIImage(named: "egg01")!
    let tamago2:UIImage = UIImage(named: "egg02")!
    let tamago3:UIImage = UIImage(named: "egg03")!
    
   
    
    @IBOutlet var countText: UILabel!
    @IBOutlet var labelText: UILabel!
    
    
   
    @IBOutlet weak var tamagoPoro: UIButton!
    
    @IBAction func tamagoButton(_ sender: Any) {
        count -= 1
        countText.text = String(count)
        
            if (count == 5){
                labelText.text = "いいね"
                tamagoPoro.setImage(tamago2, for: .normal)
            }else if (count == 3){
                labelText.text = "あと2"
            }else if (count == 0){
                labelText.text = "おわり"
                tamagoPoro.setImage(tamago3, for: .normal)
            }
    }
    
    
//
//    @IBAction func button(_ sender: UIButton) {
//        count -= 1
//        countText.text = String(count)
//
//        if(count == 5){
//            labelText.text = "がんばれ！"
//
//
//        if (count == 5){
//           labelText.text = "いいね"
//           button.setImage(image2, for: .normal)
//        }else if (count == 3){
//            labelText.text = "あと2"
//        }else if (count == 0){
//            labelText.text = "おわり"
//        }
//
//    }
    
    
    
    
    

}


