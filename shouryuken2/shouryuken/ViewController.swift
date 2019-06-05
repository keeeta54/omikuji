//
//  ViewController.swift
//  shouryuken
//
//  Created by 梶原敬太 on 2019/06/03.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var charaImage: UIImageView!
    // 昇竜拳用配列
    var imageArrayAttack : Array<UIImage> = [
//        imageArrayAttack.append(attak1),
//         imageArrayAttack.append(attak2),
//          imageArrayAttack.append(attak3),
//           imageArrayAttack.append(attak4),
//            imageArrayAttack.append(attak5),
//             imageArrayAttack.append(attak6),
//              imageArrayAttack.append(attak7),
//               imageArrayAttack.append(attak8),
//                imageArrayAttack.append(attak9),
//                 imageArrayAttack.append(attak10),
//                  imageArrayAttack.append(attak11),
//                   imageArrayAttack.append(attak12),
//                    imageArrayAttack.append(attak13),
//                     imageArrayAttack.append(attak14),
//                      imageArrayAttack.append(attak15),
//                       imageArrayAttack.append(attak16),
//                        imageArrayAttack.append(attak17),
//                         imageArrayAttack.append(attak18),
//                          imageArrayAttack.append(attak19),
//                           imageArrayAttack.append(attak20)
//                            ]
    
    
    

        override func viewDidLoad() {
        super.viewDidLoad()
   
        // 昇竜拳の画像を配列に格納
        while let attackImage = UIImage(named: "attack0\(imageArrayAttack.count+1)") {
            imageArrayAttack.append(attackImage)
        }
    
    
    }

    @IBAction func atackButton(_ sender: Any) {
        
        // アニメーションの適用
        charaImage.animationImages = imageArrayAttack
        // 1.5秒間隔
        charaImage.animationDuration = 0.5
        // 1回繰り返し
        charaImage.animationRepeatCount = 1
        // アニメーションを開始
        charaImage.startAnimating()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

