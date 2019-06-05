//
//  ViewController.swift
//  MemoApp
//
//  Created by 梶原敬太 on 2019/06/01.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textView.delegate = self
        
        //appDelegateがもっている前回の内容を呼び出してtextViewに表示させる
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        textView.text = appDelegate.lastText
        
    
        
    }


    @IBOutlet var textView: UITextView!
    
    //AppDalegateを呼び出して変数に格納
    func textViewDidChange(_ textView: UITextView) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
       
        //AppDaregateに記述した"lastText"に入力されている内容の格納
        appDelegate.lastText = textView.text
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        
        textView.text = ""
        
    }
    
    
}

