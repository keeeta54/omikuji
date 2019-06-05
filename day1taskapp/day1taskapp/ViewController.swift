//
//  ViewController.swift
//  day1taskapp
//
//  Created by 梶原敬太 on 2019/06/01.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//計算結果のラベル
    @IBOutlet var lavel: UILabel!
   
    
    
//左入力画面
    @IBOutlet var leftText: UITextField!
    
    
    
//右入力画面
    @IBOutlet var rightText: UITextField!
    
    
    
//足すボタン
    @IBAction func puls(_ sender: Any) {
        
        
//テキストにどの型が入力されるかわからないときはオプショナル型にする
//        string 型のオプショナルへ変換
        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
//   int へ変換  オプショナル型に変えるたびにあんラップする
//        ()内の！の時点でstring にかわったものをintに変えてる
        let left = Int(leftStringText!)
        let right = Int(rightStringText!)
        
//        string型をInt型に変えると勝手にオプショナル型になる
//        だから今回もオプショナルからIntの足し算にするためにアンラップ
        let total = left! + right!
        
        
        lavel.text = String(total)
        
        let lavelText = String(total)
        if total % 2 == 0 {
            lavel.text = "偶数" + lavelText
        } else {
            lavel.text = "奇数" + lavelText
        }
        
        
        
    }
   
    
    
//引くボタン
    @IBAction func minus(_ sender: Any) {
        

        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let left = Int(leftStringText!)!
        let right = Int(rightStringText!)!
        
        let total = left - right
        lavel.text = String(total)
        
        let lavelText = String(total)
        
        if total % 2 == 0 {
//            ｓｔｒｉｎｇ同士の足し算
            lavel.text = "偶数" + lavelText
        } else {
            lavel.text = "奇数" + lavelText
        }
        
    }
    
    
    
//初期化ボタン
    @IBAction func kesu(_ sender: Any) {
        lavel.text = ""
        leftText.text = ""
        rightText.text = ""
        
    }
    
    
    
//かけるボタン
    @IBAction func kakeru(_ sender: Any) {
        
        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let left = Int(leftStringText!)!
        let right = Int(rightStringText!)!
        
        let total = left * right
        lavel.text = String(total)
        
        let lavelText = String(total)
        if total % 2 == 0 {
            lavel.text = "偶数" + lavelText
        } else {
            lavel.text = "奇数" + lavelText
        }
    }
    
    
    
//割るボタン
    @IBAction func waru(_ sender: Any) {
        
        let leftStringText:String? = leftText.text
        let rightStringText:String? = rightText.text
        
        let left = Int(leftStringText!)!
        let right = Int(rightStringText!)!
        
        let total = left % right
        lavel.text = String(total)
        
        let lavelText = String(total)
        if total % 2 == 0 {
            lavel.text = "偶数" + lavelText
        } else {
            lavel.text = "奇数" + lavelText
        }
        
    }
   
    
    
    
    
    
    
}

